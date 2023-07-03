function love.load()
    imagem = love.graphics.newImage("nave3.png");

    posicaoX = 300;
    posicaoY = 300;

    velocidade = 5;

    missilImagem = love.graphics.newImage("missil2.png");
    misseis = {};

    missilVelocidade = 250;
    podeDisparar = true;

    missilTempoMax = 0.2;
    missilTempo = missilTempoMax;

    ImagemInimigo = love.graphics.newImage("inimigo2.png");
    inimigos = {};
    geraInimigoTempo = 0;
    geraInimigoTempoMax = 0.5;

end


function love.draw()
    love.graphics.draw(imagem, posicaoX, posicaoY, 0, 1, 1);

    for index, missil in ipairs(misseis) do
        love.graphics.draw(missil.imagem, missil.posicaoX, missil.posicaoY)
    end

    for index, inimigo in ipairs(inimigos) do
        love.graphics.draw(inimigo.img, inimigo.posicaoX, inimigo.posicaoY)
    end

end

function love.update(dt)
    if love.keyboard.isDown("right") then
        if posicaoX < (love.graphics.getWidth() - imagem:getWidth()) then 
            posicaoX = posicaoX + velocidade
        end
    end

    if love.keyboard.isDown("left") then
        if posicaoX > 0 then 
            posicaoX = posicaoX - velocidade
        end
    end

    if love.keyboard.isDown("down") then
        if posicaoY < (love.graphics.getHeight() - imagem:getHeight()) then
        posicaoY = posicaoY + velocidade
        end
    end

    if love.keyboard.isDown("up") then
        if posicaoY > 0 then 
            posicaoY = posicaoY - velocidade
        end
    end

    if love.keyboard.isDown("space") then
        if(left) then
          missilVelocidade = missilVelocidade - velocidade/2
        elseif(right) then
          missilVelocidade = missilVelocidade + velocidade/2
        end
        if podeDisparar then
            podeDisparar = false
            missilTempo = missilTempoMax
            missil = {
                posicaoX = posicaoX + 64,
                posicaoY = posicaoY + 32,
                width = 16, height=16,
                velocidade = missilVelocidade,
                imagem = missilImagem}
            table.insert(misseis, missil)
        end
    end
    if missilTempo > 0 then
        missilTempo = missilTempo - dt
      else
        podeDisparar = true
    end
    atualizarMisseis(dt)
    atualizarInimigos(dt)
end

function atualizarMisseis(dt)
    for i=table.getn(misseis), 1, -1 do
      missil = misseis[i]
      missil.posicaoX = missil.posicaoX + dt * missil.velocidade
    end
end

function atualizarInimigos(dt)
    geraInimigoTempo = geraInimigoTempo - dt
    if geraInimigoTempo <= 0 then
        geraInimigoTempo = geraInimigoTempoMax
        y = love.math.random(0, love.graphics.getHeight() - 64)
        inimigo = {posicaoX = love.graphics.getWidth(), posicaoY = y, width = 64, height = 64, velocidade = 100, img = ImagemInimigo}
        table.insert(inimigos, inimigo)
    end
    for i = #inimigos, 1, -1 do
        inimigo = inimigos[i]
        inimigo.posicaoX = inimigo.posicaoX - inimigo.velocidade * dt
    end
end