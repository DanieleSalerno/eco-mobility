package com.example.eco_mobility.DAO;

import com.example.eco_mobility.DTO.SpeseCarburanteDTO;
import com.example.eco_mobility.DTO.UtentiDTO;
import com.example.eco_mobility.Model.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class SpeseCarburanteDAO {
    static Connection con = DatabaseConnection.getConnection();
    private static final String TABLE_NAME = "Spesecarburante";

    public synchronized void doSaveSpeseCarburante(SpeseCarburanteDTO spesa) throws SQLException{
        PreparedStatement ps = null;

        String query="INSERT INTO "+ SpeseCarburanteDAO.TABLE_NAME+" (dat, euroSpesi, idUtenti) VALUES (?,?,?);";
        ps=con.prepareStatement(query);

        ps.setDate(1,spesa.getData());
        ps.setInt(2, spesa.getEuroSpesi());
        ps.setInt(3,spesa.getIdUtenti());

        ps.executeUpdate();

    }


}
