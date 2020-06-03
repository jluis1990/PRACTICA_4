/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emergentes.controlador;



import com.emergentes.dao.AvisoDAO;
import com.emergentes.dao.AvisoDAOimpl;
import com.emergentes.modelo.Aviso;


import com.emergentes.utiles.ConexionDB;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author LUIS
 */
@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {
Connection con = null;
 
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        ConexionDB canal = new ConexionDB();
        Connection conn = canal.conectar();
        try {
            boolean existeUsuario = false;
            //Guardamos los datos enviados desde index
            String usuario = request.getParameter("usuario");
            String password = request.getParameter("password");
            //Establecemos la conexion
            
            String consulta = "Select * from usuarios where usuario=? && password=?";
            ResultSet rs = null;
            PreparedStatement pst = null;
            pst = conn.prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, password);
            rs = pst.executeQuery();
 
            String nombres="";
            
            while(rs.next()){
                //En caso de existir una coincidencia
                existeUsuario = true;
                //Y reemplazamos los atributos de dicho Usuario
                nombres = rs.getString("nombres");
                
            }
 
            if(existeUsuario){
                 response.sendRedirect(request.getContextPath() + "/inicio");
            }else{
                //De lo contrario vamos a la página errorLogin.jsp
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }
            out.close();
        } catch (SQLException ex) {
        out.println(ex.toString());
        }
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
