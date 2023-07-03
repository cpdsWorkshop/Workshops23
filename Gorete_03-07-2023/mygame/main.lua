function love.load()
    imagem = love.graphics.newImage("nave1.png");
    posicaoX = 300;
    posicaoY = 300;
end


function love.draw()
    love.graphics.draw(imagem, posicaoX, posicaoY, 0, 1, 1);
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        posicaoX = posicaoX + 1
    end
    if love.keyboard.isDown("left") then
        posicaoX = posicaoX - 1
    end
    if love.keyboard.isDown("down") then
        posicaoY = posicaoY + 1
    end
    if love.keyboard.isDown("up") then
        posicaoY = posicaoY - 1
    end
    
end