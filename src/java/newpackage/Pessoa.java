
package newpackage;

import java.util.Date;


public class Pessoa {
    String nome;
    String cpf;
    double altura;
    double peso;
    Date nascimento;
    Pessoa pai;
    Pessoa mae;
    
    Pessoa avoPaterno(){
    return pai.pai;}
    
    Pessoa avoMaterno(){
        return mae.pai;
    }
    
}
