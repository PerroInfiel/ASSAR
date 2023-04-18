MODULE Module1
    !Declaración de socket
     VAR socketdev serverSocket; !Socket del servidor
VAR socketdev clientSocket; !Socket del cliente
VAR string data; ! Recibe la cadena del cliente

    ! Declaración de variables
    VAR num Bucle; !Declaración d bucle para el while

    
    VAR string Cir;
VAR string Cua;
VAR string EST;
VAR string Rom;
VAR string Tri;
VAR string Mat;
VAR string sing;
VAR string selfi;

    CONST robtarget INI_TOOL:=[[506.291630361,0.000000055,684.334688154],[0.016951444,0.003304092,-0.999833129,-0.005953702],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ABIZQ:=[[506.291627322,-253.783365737,388.558635137],[0.048017698,0.000000003,0.998846485,0.000000015],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ABDER:=[[506.291629282,226.021103625,388.622692684],[0.048017701,0.000000018,0.998846485,0.00000002],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ARIZQ:=[[506.29162693,-256.170100025,679.499961722],[0.048017687,0.000000009,0.998846486,0.000000018],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ARDER:=[[506.291627161,220.857576717,679.499972612],[0.048017682,0.000000017,0.998846486,0.000000015],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MEDIZQ:=[[506.291627037,-253.767099715,522.582159184],[0.048017693,0.000000003,0.998846485,0.000000019],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MEDAB:=[[506.291623822,0.513932306,386.976873124],[0.048017692,0.000000016,0.998846485,0.000000019],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MEDDER:=[[506.291628918,223.46260662,524.844215049],[0.048017696,0.000000016,0.998846485,0.000000019],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ESARIZ:=[[506.291630319,-82.198641772,583.072518643],[0.048017736,0.000000033,0.998846483,0.00000004],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ESABIZ:=[[506.291626368,-82.102947272,485.41029086],[0.048017736,0.000000034,0.998846483,0.000000039],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ESABDER:=[[506.291625505,60.214577622,486.823036734],[0.048017755,0.000000033,0.998846482,0.000000033],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ESARDER:=[[506.291634544,66.709344565,580.478724398],[0.048017756,0.000000039,0.998846482,0.000000034],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70:=[[506,6.405959787,339.932757836],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80:=[[506,-160.018170225,491.947479466],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_71:=[[506,175.088548265,491.632896675],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_81:=[[506,-1.704835303,679.003520389],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INI:=[[665.640325542,0,487.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_101:=[[353.82458167,-224.535590676,250.806277952],[0.00202353,-0.003465526,0.999900105,-0.013552704],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_111:=[[747.686228745,-117.051291017,250.806280516],[0.002023524,-0.003465509,0.999900105,-0.013552701],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_121:=[[466.845306089,-38.32338743,250.806279746],[0.002023558,-0.003465523,0.999900105,-0.013552695],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_131:=[[742.606095287,66.748354666,247.832729453],[0.002023575,-0.003465524,0.999900105,-0.013552682],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_132:=[[454.24934101,138.952574915,246.642655894],[0.002023575,-0.003465524,0.999900105,-0.013552682],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_91:=[[353.824594616,0.000000549,250.806292849],[0.00202354,-0.003465524,0.999900105,-0.01355271],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_142:=[[665.64041018,0,861.837012818],[0.499999994,0,0.866025407,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget altu_caja:=[[353.824594616,0.000000549,317.848059172],[0.00202354,-0.003465524,0.999900105,-0.01355271],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget altu_tapa:=[[353.824582675,0.00000031,474.070776702],[0.00202352,-0.003465523,0.999900105,-0.013552711],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INI_TOOL_2:=[[506.291630361,0.000000055,684.334688154],[0.016951444,0.003304092,-0.999833129,-0.005953702],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_182:=[[665.640420098,-85.360458869,587.499963629],[0.500000009,0,0.866025398,-0.000000007],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_192:=[[541.099087196,-85.360454561,587.499966997],[0.500000008,0,0.866025399,0.000000002],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_202:=[[541.099082331,64.503649199,587.499967763],[0.500000014,0.000000002,0.866025396,0.000000004],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_212:=[[890.204075016,64.503647282,587.4999638],[0.50000001,0.000000002,0.866025398,0.000000004],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_222:=[[890.204069077,64.503618601,587.500000402],[0.573032675,0.225673257,0.76972677,-0.168005456],[0,1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget cablat:=[[665.640421771,-0.00000793,587.49996474],[0.479991416,0.140029407,0.831369522,0.242538089],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget cablat2:=[[665.640420566,-0.000009406,587.499964594],[0.484065894,-0.125220713,0.838426714,-0.216888515],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INI_TOOL_2_2:=[[506.291630361,0.000000055,684.334688154],[0.016951444,0.003304092,-0.999833129,-0.005953702],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_152:=[[-0.963032928,509.640010522,475.218174883],[0.080203662,-0.703189698,0.701874156,0.080400809],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_162:=[[-10.300026127,-509.536826166,475.218174883],[0.079509613,0.709601869,0.695390732,-0.081087231],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_172:=[[665.640420298,181.047016927,609.643692497],[0.500000017,0.000000006,0.866025394,0.000000032],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   
     PROC main()
         !Conexión
fin:
         SocketCreate serverSocket;
       SocketBind serverSocket, "192.168.125.1", 1900;
           SocketListen serverSocket; !Se pone en modo de escucha
          
              SocketAccept serverSocket,clientSocket;
        SocketSend clientSocket \Str:="Conexión con ABB correcta";

WHILE Bucle = 0 DO !Hay que hacer un bucle para mantener la conexión todo el rato al cliente, porque si no haría un solo ciclo
SocketReceive clientSocket \str:=data; !Lo que reciba por el socket del cliente lo almacenará en la variable data

 Cua:= data;
            EST:= data;
          Rom:= data;
            Tri:= data;
           Cir:= data;
           Mat:= data;
           sing:=data;
           selfi:= data;
           
            IF Cua = "cuadrado" THEN
      CUADRADO;
     
 WaitTime(2);
   
              ENDIF
              
              IF Rom = "rombo" THEN
      ROMBO;
 WaitTime(2);
  
              ENDIF
              
              IF EST = "estrella" THEN
      ESTRELLA2;
 WaitTime(2);
              ENDIF
              
            IF Tri = "triangulo" THEN
     TRIANGULO;
 WaitTime(2);
              ENDIF  
              
            IF Cir = "circulo" THEN
     CIRCULO;
 WaitTime(2);
              ENDIF  
              
               IF Mat = "111000" THEN
    MoveJ Target_101,v1000,fine,pinza\WObj:=caminito;
    
 WaitTime(2);
  
              ENDIF  
              
               IF Mat = "222000" THEN
    MoveJ Target_111,v1000,fine,pinza\WObj:=caminito;
 WaitTime(2);
  
              ENDIF  
              
               IF Mat = "333000" THEN
   MoveJ Target_121,v1000,fine,pinza\WObj:=caminito;
 WaitTime(2);
 
              ENDIF  
              
               IF Mat = "444000" THEN
    MoveJ Target_131,v1000,fine,pinza\WObj:=caminito;
 WaitTime(2);
 
              ENDIF  
              
               IF Mat = "555000" THEN
    FINMATE;
 WaitTime(2);
 
              ENDIF  
              
            IF Mat = "888000" THEN
    MoveJ INI,v1000,z100,pinza\WObj:=INICIO;
    
              ENDIF
              
             IF sing = "dancing" THEN
    bailecito;
     WaitTime(2);
              ENDIF    
              
                IF selfi = "self1" THEN
  MoveJ Target_142,v1000,fine,pinza\WObj:=selfie;
     WaitTime(2);
              ENDIF  
              
              
               IF selfi = "self2" THEN
    MoveJ Target_152,v1000,fine,pinza\WObj:=selfie;
     WaitTime(2);
              ENDIF  
              
               IF selfi = "self3" THEN
   MoveJ Target_162,v1000,fine,pinza\WObj:=selfie;
     WaitTime(2);
              ENDIF  
               IF selfi = "self4" THEN
     MoveJ Target_172,v1000,fine,pinza\WObj:=selfie;
     WaitTime(2);
              ENDIF  
              
              
              
            IF Mat = "999000" THEN
    MoveJ INI,v1000,z100,pinza\WObj:=INICIO;
     SocketClose clientSocket;
            SocketClose serverSocket;
    GOTO fin;
              ENDIF                    
                      
         ENDWHILE
      
           ENDPROC
    
    
    
    
    
    
    
    PROC TRIANGULO()
        MoveJ INI_TOOL,v1000,fine,tool0\WObj:=TOOL_INI;
        MoveJ ABIZQ,v1000,fine,tool0\WObj:=PUNTOS_FIGURAS;
        MoveJ ABDER,v1000,fine,tool0\WObj:=PUNTOS_FIGURAS;
        MoveJ INI_TOOL,v1000,fine,tool0\WObj:=TOOL_INI;
        MoveJ INI,v1000,z100,pinza\WObj:=INICIO;
    ENDPROC
    PROC CUADRADO()
        MoveJ INI_TOOL,v1000,fine,tool0\WObj:=TOOL_INI;
        MoveJ ARIZQ,v1000,fine,tool0\WObj:=PUNTOS_FIGURAS;
        MoveJ ABIZQ,v1000,fine,tool0\WObj:=PUNTOS_FIGURAS;
        MoveJ ABDER,v1000,fine,tool0\WObj:=PUNTOS_FIGURAS;
        MoveJ ARDER,v1000,fine,tool0\WObj:=PUNTOS_FIGURAS;
        MoveJ INI_TOOL,v1000,fine,tool0\WObj:=TOOL_INI;
        MoveL INI,v1000,z100,pinza\WObj:=INICIO;
    ENDPROC
    PROC ROMBO()
        MoveJ INI_TOOL,v1000,fine,tool0\WObj:=TOOL_INI;
        MoveJ MEDIZQ,v1000,fine,tool0\WObj:=PUNTOS_FIGURAS;
        MoveJ MEDAB,v1000,fine,tool0\WObj:=PUNTOS_FIGURAS;
        MoveJ MEDDER,v1000,fine,tool0\WObj:=PUNTOS_FIGURAS;
        MoveJ INI_TOOL,v1000,fine,tool0\WObj:=TOOL_INI;
        MoveJ INI,v1000,z100,pinza\WObj:=INICIO;
    ENDPROC
    PROC CIRCULO()
        MoveJ INI_TOOL,v1000,z100,tool0\WObj:=TOOL_INI;
        MoveC Target_80,Target_70,v1000,fine,tool0\WObj:=puntos_circulo;
        MoveC Target_71,Target_81,v1000,fine,tool0\WObj:=puntos_circulo;
        MoveJ INI_TOOL,v1000,z100,tool0\WObj:=TOOL_INI;
        MoveJ INI,v1000,z100,pinza\WObj:=INICIO;

    ENDPROC
    PROC ESTRELLA2()
        MoveJ INI_TOOL,v1000,fine,tool0\WObj:=TOOL_INI;
        MoveJ ESARIZ,v1000,fine,tool0\WObj:=ESTRELLA_2;
        MoveJ MEDIZQ,v1000,fine,tool0\WObj:=PUNTOS_FIGURAS;
        MoveJ ESABIZ,v1000,fine,tool0\WObj:=ESTRELLA_2;
        MoveJ MEDAB,v1000,fine,tool0\WObj:=PUNTOS_FIGURAS;
        MoveJ ESABDER,v1000,fine,tool0\WObj:=ESTRELLA_2;
        MoveJ MEDDER,v1000,fine,tool0\WObj:=PUNTOS_FIGURAS;
        MoveJ ESARDER,v1000,fine,tool0\WObj:=ESTRELLA_2;
        MoveJ INI_TOOL,v1000,fine,tool0\WObj:=TOOL_INI;
        MoveJ INI,v1000,z100,pinza\WObj:=INICIO;
    ENDPROC
    PROC FINMATE()
      MoveJ Target_132,v1000,fine,pinza\WObj:=caminito;
        MoveJ INI,v1000,z100,pinza\WObj:=INICIO;
        MoveJ Target_91,v1000,fine,pinza\WObj:=caminito;
        MoveJ Target_142,v1000,fine,pinza\WObj:=caja;
        MoveJ Target_91,v1000,fine,pinza\WObj:=caminito;
        MoveJ INI,v1000,fine,pinza\WObj:=INICIO;
    ENDPROC
    PROC MATES()
        MoveJ INI,v1000,z100,pinza\WObj:=INICIO;
        MoveJ Target_101,v1000,fine,pinza\WObj:=caminito;
        MoveJ Target_111,v1000,fine,pinza\WObj:=caminito;
        MoveJ Target_121,v1000,fine,pinza\WObj:=caminito;
        MoveJ Target_131,v1000,fine,pinza\WObj:=caminito;
        MoveJ Target_132,v1000,fine,pinza\WObj:=caminito;
        MoveJ INI,v1000,z100,pinza\WObj:=INICIO;
        MoveJ altu_caja,v80,fine,pinza\WObj:=caminito;
        MoveJ altu_tapa,v80,fine,pinza\WObj:=caja;
        MoveJ altu_caja,v80,fine,pinza\WObj:=caminito;
        MoveJ INI,v1000,fine,pinza\WObj:=INICIO;
    ENDPROC
    PROC bailecito()
        MoveJ INI_TOOL_2,v300,fine,tool0\WObj:=TOOL_INI;
        MoveJ Target_182,v300,fine,pinza\WObj:=baile;
        MoveJ Target_192,v300,fine,pinza\WObj:=baile;
        MoveJ Target_202,v300,fine,pinza\WObj:=baile;
        MoveJ Target_212,v300,fine,pinza\WObj:=baile;
        MoveJ Target_222,v300,fine,pinza\WObj:=baile;
        MoveJ cablat,v300,fine,pinza\WObj:=baile;
        MoveJ cablat2,v300,fine,pinza\WObj:=baile;
        MoveJ INI_TOOL_2_2,v300,fine,tool0\WObj:=TOOL_INI;
        MoveJ INI,v300,fine,pinza\WObj:=INICIO;
    ENDPROC
    PROC SELF()
        MoveJ Target_142,v1000,fine,pinza\WObj:=selfie;
        MoveJ Target_152,v1000,fine,pinza\WObj:=selfie;
        MoveJ Target_162,v1000,fine,pinza\WObj:=selfie;
        MoveJ Target_172,v1000,fine,pinza\WObj:=selfie;
    ENDPROC
ENDMODULE