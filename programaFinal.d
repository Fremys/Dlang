module programaFinal;

//importar biblioteca
import std.stdio;

//função para calcular a área de um quadrado ou quadrado

auto quadRet(const float base, const float altura){
    //definir variaveis
    float resultado = -1;
    //testar se os parametros não são negativos
    if( base >= 0 && altura >= 0){

        resultado = base * altura;
    }

    //retornar
    return resultado;
}

//função para calcular a área de um triângulo

auto triangulo(const float base, const float altura){
    //definir variaveis
    float resultado = -1;
    //testar se os parametros não são negativos
    if( base >= 0 && altura >= 0){

        resultado = (base * altura);

        //dividir o resultado por 2
        void dividirPor2(){
            resultado = resultado / 2;
        }

        //chamar divisão por 2
        dividirPor2();
    }


    //retornar
    return resultado;
}

//função para calcular a área de um trapézio

auto trapezio(const float baseMaior, const float baseMenor, const float altura){
    //definir variaveis
    float resultado = -1;
    //testar se os parametros não são negativos
    if( baseMaior >= 0 && baseMenor >= 0 && altura >= 0){

        resultado = ((baseMaior + baseMenor) * altura)/2;
    }

    //retornar
    return resultado;
}

//função para calcular a área de um círculo

auto circulo(const float raio){

    //definir variaveis
    float resultado = -1;
    immutable float pi = 3.14;

    //testar se os parametros não são negativos
    if( raio >= 0){

        resultado = (raio * raio) * pi ;
    }

    //retornar
    return resultado;
}

//função para calcula a área de um losangulo

auto losangulo(const float diagMaior, const float diagMenor){

    //definir variaveis
    float resultado = -1;

    //testar se os parametros não são negativos
    if( diagMaior >= 0 && diagMenor >= 0){

        resultado = (diagMaior * diagMenor) / 2;
    }

    //retornar
    return resultado;

}

//construir interface
void inferface(){
    //definir dados
    int opcao = 6;

    //menu de opções
    switch(opcao){

        case 1:
            //definir dados
            float result = 0;
            float base = 4.5; 
            float altura = 4.5;

            //chamar função
            result = quadRet(base, altura);

            //mostrar resultado
            writeln("A área desse quadrado/retangulo é: ");
            writeln(result);
        break;

        case 2:
            //definir dados
            float result = 0;
            float base = 3;
            float altura = 4;

            //chamar função
            result = triangulo(base, altura);

            //mostrar resultado
            writeln("A area desse trinagulo é: ");
            writeln(result);
        break;

        case 3:
            //definir dados
            float result = 0;
            float baseMaior = 2;
            float baseMenor = 2;
            float altura = 4;

            //chamar função
            result = trapezio(baseMaior, baseMenor, altura);

            //mostrar resultado
            writeln("A area desse trapezio é: ");
            writeln(result);
        break;

        case 4:
            //definir dados
            float result = 0;
            float raio = 4.5;

            //chamar função
            result = circulo(raio);

            //mostrar resultado
            writeln("A area desse circulo é: ");
            writeln(result);
        break;

        case 5:
            //definir dados
            float result = 0;
            float diagMaior = 8;
            float diagMenor = 3;

            //chamar função
            result = losangulo(diagMaior, diagMenor);

            //mostrar resultado 
            writeln("A area desse losangulo é: ");
            writeln(result);
        break;
        default:
            writeln("Opção invalida ;-;");

    }
}

void main(){
    //chamar interface
    inferface();
}
