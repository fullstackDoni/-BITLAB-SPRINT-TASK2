package kz.bitlab.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBConnection {

    private static Connection connection;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoplaptop",
                    "root",
                    "");

        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public static ArrayList<Items> getItems(){

        ArrayList<Items> items = new ArrayList<>();

        try {

            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * FROM items");
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()){
                Items item = new Items();
                item.setId(resultSet.getInt("id"));
                item.setName(resultSet.getString("name"));
                item.setDescription(resultSet.getString("description"));
                item.setPrice(resultSet.getDouble("price"));
                items.add(item);
            }
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return items;
    }
    public static void addItem(Items items){
        try {

            PreparedStatement statement = connection.prepareStatement("" +
                    "INSERT INTO items (name, description,price) " +
                    "VALUES (?, ?, ? )");
            statement.setString(1,items.getName());
            statement.setString(2,items.getDescription());
            statement.setDouble(3,items.getPrice());

            statement.executeUpdate();

        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public static Items getItem(int id ){
        Items items = null;
        try {

            PreparedStatement statement = connection.prepareStatement(""+
                    "SELECT * FROM items WHERE id = ? LIMIT 1");
            statement.setInt(1,id);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                items = new Items();
                items.setId(resultSet.getInt("id"));
                items.setName(resultSet.getString("name"));
                items.setDescription(resultSet.getString("description"));
                items.setPrice(resultSet.getDouble("price"));
            }
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return items;
    }
    public static void UpdateItem(Items items){
        try {

            PreparedStatement statement = connection.prepareStatement(""+
                    "UPDATE items " +
                    "SET name = ?, " +
                    "description = ?" +
                    "price = ? " +
                    "WHERE id = ?");
            statement.setString(1,items.getName());
            statement.setString(2,items.getDescription());
            statement.setDouble(3,items.getPrice());
            statement.setInt(4,items.getId());

            statement.executeUpdate();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public static void DeleteItem(int id){

        try {

            PreparedStatement statement = connection.prepareStatement(""+
                    "DELETE FROM items WHERE id = ?");

            statement.setLong(1,id);

            statement.executeUpdate();
            statement.close();


        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
