import "dart:io";
import "dart:math";
import "personagem.dart";
import "open.dart";

void main(){
bool jogarNovamente = true;

while(jogarNovamente == true){
  open();

  print("BEM VINDO! ESCOLHA UMA OPÇÃO: ");
  print("1. Jogar");
  print("2. Sair");

  int opcao = int.parse(stdin.readLineSync()!);

  switch (opcao){
  case 1:
    jogar();
    break;
  case 2:
    jogarNovamente = false;
    break;
  default:
    print("[ERR0] pção Inválida.");

  }
}
print("OBRIGADO POR JOGAR!");
}


void jogar(){
  List<Personagem> personagens = [
    Personagem("Dart" , 100, 100, 50, 30),
    Personagem("Java" , 150, 50, 25, 40),
    Personagem("PHP", 120, 70, 20, 10)
  ];

  Random random = Random();   //Random = gera numeros aleatórios
  Personagem computador = personagens[random.nextInt(3)];

print("Escolha o seu personagem:");
for(int i = 0; i < personagens.length; i++){
  print("${i + 1}. ${personagens[i].nome}");
}

  int escolha = int.parse(stdin.readLineSync()!);
   Personagem jogador = personagens[escolha -1];

  print("Você escolheu ${computador.nome}");
  print("O computador escolheu ${computador.nome}");
 
 while(jogador.vida >0 && computador.vida >0){
  print('\nPressione Enter para continuar...'); 
  stdin.readLineSync();  //espera pela entrada do úsuario 
  print('\x1B[2J\x1B[0;0H'); //Limpa a tela

  print("Turno do jogador:");
  print("Escolha um ataque:");
  print("1. Ataque normal");
  print("2. Ataque especial");
  print("3. Sair");

  int ataqueEscolhido = int.parse(stdin.readLineSync()!);
 
 switch(ataqueEscolhido){
  case 1:
    jogador.atacar(computador);
    break;
  case 2:
    jogador.atacar(computador, especial: true);
    break;
  case 3:
    print("Saindo...");
    return;
  default:
    print("[ERR0] Opção Inválida. Ataque Normal Realizado");
    jogador.atacar(computador);     
 }
 if (computador.vida <= 0){
  print("Você derrotou o ${computador.nome}");
  print("eeeeeebbaaa!! (*o *)/");
  break;
 }
 
 print('\nPressione Enter para continuar...');
  stdin.readLineSync(); //espera pela entrada do úsuario
  print('\x1B[2J\x1B[0;0H'); //Limpa a tela

print("Vida restande do ${computador.nome} : ${computador.vida}");

print("Turno do Computador");
computador.atacar(jogador);

if(jogador.vida <= 0){
  print("Você foi derrotado pelo ${computador.nome}!");
  print("\n é meu amigo, tá dificil!");
  break;
}

  print('\nPressione Enter para continuar...');
  stdin.readLineSync(); //espera pela entrada do úsuario
  print('\x1B[2J\x1B[0;0H'); //Limpa a tela

  print("Sua vida restante: ${jogador.vida}");
 }
print("Fim do jogo. Deseja jogar Novamente? (s/n)");
String jogarNovamenteOpcao = stdin.readLineSync()!.toLowerCase();

  if(jogarNovamenteOpcao == 's'){
    jogar();

  }else{
    print('\nTem certeza que quer sair? (Pressione Enter se tiver)...');
    stdin.readLineSync();
    print('\x1B[2J\x1B[0;0H'); //Limpa a tela
 

  print('\nPorque quer tanto sair? (Pressione Enter se tiver certeza)...');
    stdin.readLineSync();
    print('\x1B[2J\x1B[0;0H'); //Limpa a tela

    print('\n Sério mesmo? (Pressione Enter se tiver certeza)...');
    stdin.readLineSync();
    print('\x1B[2J\x1B[0;0H'); //Limpa a tela

    print('\n Pensei fossemos amigos..(Pressione Enter se quiser sair)...');
    stdin.readLineSync();
    print('\x1B[2J\x1B[0;0H'); //Limpa a tela

    print('\nAdeus então, nos vemos em breve........ muito breve.(Pressione Enter)...');
    stdin.readLineSync();
    print('\x1B[2J\x1B[0;0H'); //Limpa a tela







  }
}
