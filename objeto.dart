void main(){
  Personagem heroi = Personagem();
  Personagem golem = Personagem();
  heroi.nome = "hh";
  golem.nome = "gg";

  heroi.ataque(golem);
  golem.ataque(heroi);

  heroi.cura(heroi);
  golem.cura(heroi);
}

class Personagem{
  String nome = "";
  int vida = 200;

 void ataque(Personagem alvo){
 print (" ${this.nome} atacou ${alvo.nome}");
 alvo.vida -= 20;
 print("vida : ${alvo.vida}");

 }

 void cura(Personagem alvo){
  alvo.vida += 20;
  print("foi curado - vida : ${alvo.vida}");
 }

}