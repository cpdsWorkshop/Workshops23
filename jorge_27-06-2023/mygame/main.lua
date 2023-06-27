function love.load()
    --Escreve o cÃ³digo para carregar a imagem na linha baixo
    imagem = love.graphics.newImage("nave1.png")
    posicaoX = 0
  posicaoY = 0
  velocidade = 15

  missilImagem = love.graphics.newImage("missil1.png")
misseis = {}

end


function love.draw()
    --Escreve o cÃ³digo para desenhar a imagem na linha baixo
    love.graphics.draw(imagem, posicaoX, posicaoY, 0, 1, 1)

    for index, missil in ipairs(misseis) do
        love.graphics.draw(missil.imagem, missil.posicaoX,
    missil.posicaoY)
    end
end

function love.update(dt)

    if love.keyboard.isDown("space") then
        missil = {posicaoX = posicaoX, posicaoY = posicaoY,
    velocidade = 300, imagem = missilImagem}
        table.insert(misseis, missil)
    end
    
    if posicaoY > 0 then
        if love.keyboard.isDown("up") then
            posicaoY = posicaoY - velocidade
        end
    end
    if posicaoX < (love.graphics.getWidth() - imagem:getWidth()) then
        if love.keyboard.isDown("right") then
            posicaoX = posicaoX +  velocidade
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
   
end