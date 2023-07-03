function love.load()
    imagem = love.graphics.newImage("nave1.png");
    posicaoX = 300;
    posicaoY = 300;
end


function love.draw()
    love.graphics.draw(imagem, posicaoX, posicaoY, 0, 1, 1);
end

function love.update(dt)

end