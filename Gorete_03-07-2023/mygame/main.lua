function love.load()
    imagem = love.graphics.newImage("nave3.png");
end


function love.draw()
    love.graphics.draw(imagem, 100, 100, 0, 1, 1);
end

function love.update(dt)

end