package com.day5.exception;

public class ExceptionDriver {
	public void getTeam(String color) {
		if(color.equals("yellow")){
			try {
				throw new CSKException();
			} catch (CSKException e) {
				System.out.println("Caught...");
			}
		}
	}
}
