import "dart:io";

void open() {
  print( """


██╗     ██╗███╗   ██╗ ██████╗ ██╗   ██╗ █████╗  ██████╗ ███████╗        ███████╗██╗ ██████╗ ██╗  ██╗████████╗
██║     ██║████╗  ██║██╔════╝ ██║   ██║██╔══██╗██╔════╝ ██╔════╝        ██╔════╝██║██╔════╝ ██║  ██║╚══██╔══╝
██║     ██║██╔██╗ ██║██║  ███╗██║   ██║███████║██║  ███╗█████╗          █████╗  ██║██║  ███╗███████║   ██║   
██║     ██║██║╚██╗██║██║   ██║██║   ██║██╔══██║██║   ██║██╔══╝          ██╔══╝  ██║██║   ██║██╔══██║   ██║   
███████╗██║██║ ╚████║╚██████╔╝╚██████╔╝██║  ██║╚██████╔╝███████╗        ██║     ██║╚██████╔╝██║  ██║   ██║   
╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝        ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   
                                                                                                             

""");

  print('\nPressione Enter para continuar...');
  stdin.readLineSync(); //espera pela entrada do úsuario
  print('\x1B[2J\x1B[0;0H'); //Limpa a tela

}