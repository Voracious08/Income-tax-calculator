/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Income;
import java.io.*;
import static java.lang.System.out;


/**
 *
 * @author ASUS
 */
public class Calc {
       
       public int BasicSalary;
       public  int Savings;
       public int HomeLoan;
       int b , DA,CompleteSalary;
       public int old_tax;
       public int new_tax;
       public int TaxableIncome1;
       public int TaxableIncome2;
       public int a,c;
       
            
       
      
    
    
    
    
    
    public void setbasicsalary(int BasicSalary) {
        this.BasicSalary = BasicSalary;
        
    }
    
    
     public void setsavings(int Savings) {
        this.Savings = Savings;
    }
     
     
     
     public void sethomeloan(int HomeLoan) {
        this.HomeLoan = HomeLoan;
    }
    
    
    
    
     
     
 
     public void evaloldtax(){
         
         
          
           
  
           
           
           
             
              b = BasicSalary/5 ; // HRA offered by BSP(20% of Basic!)
             
            
          
            
            // Evaluating DA 
            
              DA = (( 120 * BasicSalary)/100);
            
            
            
            // Evaluating complete salary 
              CompleteSalary = BasicSalary + b + DA;
            


             TaxableIncome1 = (CompleteSalary * 12) - (Savings+HomeLoan);
           

           // Now since we got the required taxable income , We can compute the tax amount as per old and new scheme
           

           // old scheme 
           

           if ((TaxableIncome1 > 250000) && (TaxableIncome1 < 500000) ){
               
                a = TaxableIncome1 - 250000;
                old_tax =   (5*a)/100;
           }
           
           
           if ((TaxableIncome1 > 500000) && (TaxableIncome1 < 1000000) ){
               
                a = TaxableIncome1 - 500000;
                old_tax = 12500 + ((20*a)/100);
           }
           
           if(TaxableIncome1>1000000) {
                a = TaxableIncome1 - 1000000;
                old_tax =  112500 + ( (30 * a)/100 );
           }
           
           
           
           
           
           
          
           }
     
     
     
           
    
  
    
     public void evalnewtax(){
         
         
         
            TaxableIncome2 = CompleteSalary*12;
             
             
             
            if ((TaxableIncome2 > 250000) && (TaxableIncome2 < 500000) ){
               
                
                b = TaxableIncome2 - 250000;
                new_tax = ( (5 * b )/100);
           }
             
             
            if((TaxableIncome2 >500000) && (TaxableIncome2<750000)){
                
                b = TaxableIncome2 - 500000;
                new_tax =    12500 + ( (10*b)/100);
                
            } 
             
           
             if((TaxableIncome2>750000) && (TaxableIncome2<1000000)){
                
                b = TaxableIncome2 - 750000;
                new_tax =  37500 + ( (15*b)/100);
                
            }  
             
             
             if((TaxableIncome2>1000000) && (TaxableIncome2<1250000)){
                b = TaxableIncome2 - 1000000;
                new_tax = 75000 + ( (20*b)/100);
                
            }  
             
             
             if((TaxableIncome2>1250000) && (TaxableIncome2<1500000)){
                
                 b= TaxableIncome2 - 1250000;
                new_tax =   125000  +  ( (25*b)/100);
                
            } 
             
             
             if(TaxableIncome2>1500000){
                 b = TaxableIncome2 - 1500000;
                 new_tax = 187500 + ((30*b)/100);
                 
                 
                 
             }
             
             
             
             
             
             
             
         }
     
     
     
     
        public int result(){
            
            if (old_tax<new_tax){
                
                
                return (old_tax);
                
                
                
            }
                
              
            else{
                
                return(new_tax);
            }
                
            
            
            
            
        }
     
        
    
    
    
}
