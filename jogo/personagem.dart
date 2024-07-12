class Personagem{
 String nome;
 int vida;
 int ataque;
 int defesa;
 int poder;

 Personagem(this.nome, this.vida, this.ataque,this.defesa, this.poder);

 void atacar(Personagem alvo,{bool especial = false}){
  int dano;

  if(especial == true){
    if(poder >= 10){
      dano = ataque * 2 - defesa;
      poder -= 10;
      print("$nome usou ataque especial contra ${alvo.nome}");
    }else{
      print("Você não tem poder suficiente");
      dano = 0;
    }
  }else{
    dano = ataque - defesa;
    print("$nome atacou ${alvo.nome} causando $dano de dano.");
  }

   alvo.vida -= dano;
 }
} 
   

 
    
