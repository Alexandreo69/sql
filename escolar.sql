var ball = createSprite(200, 200, 10, 10);
var paddle1 = createSprite(20, 200, 10, 60);  // Jogador à esquerda
var paddle2 = createSprite(380, 200, 10, 60); // Jogador à direita
ball.shapeColor = "white";
paddle1.shapeColor = "white";
paddle2.shapeColor = "white";
ball.velocityX = 4;
ball.velocityY = 3;
var player1Score = 0;
var player2Score = 0;
function draw() {
  background("black");
  createEdgeSprites();
  ball.bounceOff(edges[2]); // Borda superior
  ball.bounceOff(edges[3]); // Borda inferior
  
  // Movimento das raquetes para o jogador à esquerda (W e S) e à direita (setas)
  if (keyDown("s")) {
    paddle1.y += 5;
  }
  if (keyDown("w")) {
    paddle1.y -= 5;
  }
  paddle2.y = ball.y;
  /*if (keyDown("down")) {
    paddle2.y += 5;
  }
  if (keyDown("up")) {
    paddle2.y -= 5;
  }*/
  // Fazer a bola quicar nas raquetes
  ball.bounceOff(paddle1);
  ball.bounceOff(paddle2);
  // Condições de pontuação
  if(ball.x < 0) {
    player2Score += 1;
    resetBall();
  }
  if(ball.x > 400) {
    player1Score += 1;
    resetBall();
  }
  // Mostrar a pontuação
  textSize(20);
  fill("white");
  text(player1Score, 170, 20);
  text(player2Score, 230, 20);
  drawSprites();
}
function resetBall() {
  ball.x = 200;
  ball.y = 200;
  ball.velocityX = ball.velocityX > 0 ? -4 : 4; // Inverter a direção da bola
  ball.velocityY = 3;
}
