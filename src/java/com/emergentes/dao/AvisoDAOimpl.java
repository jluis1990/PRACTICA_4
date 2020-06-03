package com.emergentes.dao;

import com.emergentes.modelo.Aviso;
import com.emergentes.utiles.ConexionDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AvisoDAOimpl extends ConexionDB implements AvisoDAO {

    @Override
    public void insert(Aviso aviso) throws Exception {
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("insert into avisos (titulo,contenido,autor,fecha) values(?,?,?,?)");
            ps.setString(1, aviso.getTitulo());
            ps.setString(2, aviso.getContenido());
            ps.setString(3, aviso.getAutor());
            ps.setString(4, aviso.getFecha());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void update(Aviso aviso) throws Exception {
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("UPDATE avisos set titulo =?, contenido =? , autor =? ,fecha =? where id=?");
            ps.setString(1, aviso.getTitulo());
            ps.setString(2, aviso.getContenido());
            ps.setString(3, aviso.getAutor());
             ps.setString(4, aviso.getFecha());
            ps.setInt(5, aviso.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }

    }

    @Override
    public void delete(int id) throws Exception {
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("DELETE FROM avisos where id=?");
            ps.setInt(1, id);
            System.out.println("Registro eliminado");
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public Aviso getById(int id) throws Exception {
        Aviso avi = new Aviso();
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM avisos WHERE id=? limit 1");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                avi.setId(rs.getInt("id"));
                avi.setTitulo(rs.getString("titulo"));
                avi.setContenido(rs.getString("contenido"));
                avi.setAutor(rs.getString("autor"));
                 avi.setFecha(rs.getString("fecha"));
               
            }

        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return avi;
    }

    @Override
    public List<Aviso> getAll() throws Exception {
       List<Aviso> lista=null;
       try{
           this.conectar();
           PreparedStatement ps=this.conn.prepareStatement("SELECT * FROM avisos");
           ResultSet rs= ps.executeQuery();
           lista=new ArrayList<Aviso>();
           while(rs.next()){
               Aviso avi=new Aviso();
               avi.setId(rs.getInt("id"));
               avi.setTitulo(rs.getString("titulo"));
               avi.setContenido(rs.getString("contenido"));
               avi.setAutor(rs.getString("autor"));
               avi.setFecha(rs.getString("fecha"));
               lista.add(avi);
           }
           rs.close();
           ps.close();
       }catch(Exception e){
           throw e;
       }finally{
           this.desconectar();
       }
       return lista;
        
    }

}
