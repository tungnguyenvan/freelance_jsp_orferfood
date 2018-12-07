package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.ConnectDatabase;
import model.FoodsModel;
import utils.Contracts;

public class FoodsController {
	public List<FoodsModel> index() throws Exception{
		List<FoodsModel> foods = new ArrayList<>();
		foods = refactorFoods(ConnectDatabase.selectData(Contracts.sqlGetFoods()));
		return foods;
	}
	
	public List<FoodsModel> special() throws Exception{
		List<FoodsModel> foods = new ArrayList<>();
		foods = refactorFoods(ConnectDatabase.selectData(Contracts.sqlSpecitalFood()));
		return foods;
	}
	
	public FoodsModel get(int id) throws Exception {
		FoodsModel model = new FoodsModel();
		model = refactorFood(ConnectDatabase.selectData(Contracts.sqlGetFood(id)));
		return model;
	}
	
 	private List<FoodsModel> refactorFoods(ResultSet resultSet) throws Exception{
		List<FoodsModel> foods = new ArrayList();
		
		while(resultSet.next()){
			FoodsModel foodModel = new FoodsModel(resultSet.getInt(1), 
					resultSet.getString(2),
					resultSet.getString(3), 
					resultSet.getInt(4), 
					resultSet.getInt(5), 
					resultSet.getInt(6),
					resultSet.getString(7));
			
			foods.add(foodModel);
		}
		
		return foods;
	}
 	
 	private FoodsModel refactorFood(ResultSet resultSet) throws Exception{
 		FoodsModel model = null;
 		resultSet.next();
 		model = new FoodsModel(resultSet.getInt(1), 
				resultSet.getString(2),
				resultSet.getString(3), 
				resultSet.getInt(4), 
				resultSet.getInt(5), 
				resultSet.getInt(6),
				resultSet.getString(7));
 		return model;
 	}
 	
// 	public static void main(String[] args) throws Exception {
//		System.out.println(new FoodsController().get(6).getName());
//	}
}
