function love.load()
    --Escreve o cÃ³digo para carregar a imagem na linha baixo
    imagem = love.graphics.newImage("nave2.png")
    posicaoX = 0
    posicaoY = 0
    velocidade = 5
    missilImagem = love.graphics.newImage("missil1.png")
    misseis = {}

    missilVelocidade = 250
    podeDisparar = true
end


function love.draw()
    love.graphics.print("Ola seu gay!", 50, 50);
    --Escreve o cÃ³digo para desenhar a imagem na linha baixo
    love.graphics.draw(imagem, posicaoX, posicaoY, 0, 1, 1)
    for index, missil in ipairs(misseis) do
        love.graphics.draw(missil.imagem, missil.posicaoX,missil.posicaoY)
    end
end

function love.update(dt)
    if posicaoX < (love.graphics.getWidth() - imagem:getWidth()) then
        if love.keyboard.isDown("right") then
            posicaoX = posicaoX + velocidade
        end
    end
    if posicaoX > 0 then
        if love.keyboard.isDown("left") then
            posicaoX = posicaoX - velocidade
        end
    end
    if posicaoY <(love.graphics.getHeight() - imagem:getHeight()) then
        if love.keyboard.isDown("down") then
            posicaoY = posicaoY + velocidade
        end
    end
    if posicaoY > 0 then
        if love.keyboard.isDown("up") then
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
        missil = {
            posicaoX = posicaoX + 64,
            posicaoY = posicaoY + 32,
            width = 16, height=16,
            velocidade = missilVelocidade,
            imagem = missilImagem}
        table.insert(misseis, missil)
    end
end
atualizarMisseis(dt)

end

function atualizarMisseis(dt)
    for i=table.getn(misseis), 1, -1 do
        missil = misseis[i]
        missil.posicaoX = missil.posicaoX + dt *missil.velocidade
    end
end