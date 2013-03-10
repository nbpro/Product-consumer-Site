/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Kumar
 */
import java.util.*;

   public class GenerateRandomNumber{
	public static void main(String[] args){
		Random rand = new Random();
		int numNoRange = rand.nextInt(500);
		System.out.println("Generated Random Number without specifying any range is : " + numNoRange);
	}
}
 

