
package newpackage;

import java.util.Date;


public class Main {
    public static void main(String[] args) {
       /* Teste com Horario
        Horario horaAtual = new Horario();
        
        horaAtual.hora = 20;
        horaAtual.minuto = 32;
        horaAtual.segundo = 45;
        
        Horario horaIntervalo = new Horario();
        
        horaIntervalo.hora= 20;
        horaIntervalo.minuto = 40;
        horaIntervalo.segundo= 0;
             
        */
        
        
        
        Data hoje = new Data();
        hoje.setDia(20);
        hoje.setMes(9);
        hoje.setAno(2017);
        
        Data niver = new Data();
        niver.setDia(1);
        niver.setMes(7);
        niver.setAno(1979);
        
        
        
        /*     Teste com Pessoa
        
        Pessoa eu;
        eu = new Pessoa();
        eu.nome = "Ricardo";
        eu.pai = new Pessoa();
        eu.pai.nome = "Jose";
        Pessoa meuAvo = new Pessoa();
        meuAvo.nome = "Ramiro";
        eu.pai.pai = meuAvo;
        
        
        System.out.println("Eu: "+eu.nome);
        System.out.println("Meu Pai: "+eu.pai.nome);
        System.out.println("Meu Avo: "+eu.avoPaterno().nome);
    */
    }
}
