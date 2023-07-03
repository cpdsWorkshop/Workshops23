function love.load()
    imagem = love.graphics.newImage("nave1.png");
    posicaoX = 300;
    posicaoY = 300;
    velocidade = 5;
end


function love.draw()
    love.graphics.draw(imagem, posicaoX, posicaoY, 0, 1, 1);
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
    
end