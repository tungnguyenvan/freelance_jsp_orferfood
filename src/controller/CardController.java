package controller;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.CardModel;
import model.ConnectDatabase;
import utils.Contracts;

public class CardController {
	
	public List<CardModel> index(int idUser) throws Exception{
		ResultSet resultSet = ConnectDatabase.selectData(Contracts.sqlCart(idUser));
		List<CardModel> result = refactorCarts(resultSet);
		return result;
	}
	
	public boolean store(int idUser, int idFood) throws Exception{
		boolean result = ConnectDatabase.excuteSQL(Contracts.sqlStoreCard(idUser, idFood));
		return !result;
	}
	
	public boolean remove(int id) throws Exception{
		boolean result = ConnectDatabase.excuteSQL(Contracts.sqlRemove(id));
		return !result;
	}
	
	private List<CardModel> refactorCarts(ResultSet resultSet) throws Exception{
		List<CardModel> carts = new ArrayList<>();
		
		while(resultSet.next()) {
			CardModel cart = new CardModel(resultSet.getInt(1), resultSet.getInt(2), resultSet.getInt(3), resultSet.getInt(4));
			carts.add(cart);
		}
		
		return carts;
	}
	public static void main(String[] args) throws Exception {
		CardController cardController = new CardController();
		System.out.println(cardController.index(1).get(0).getIdUser());
	}
}
