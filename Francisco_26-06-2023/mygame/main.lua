function love.load()
    --Escreve o cÃ³digo para carregar a imagem na linha baixo
    imagem = love.graphics.newImage("nave2.png")
end


function love.draw()
    love.graphics.print("Ola seu gay!", 50, 50);
    --Escreve o cÃ³digo para desenhar a imagem na linha baixo
    love.graphics.draw(imagem, 100, 100, 0, 1, 1)
end

function love.update(dt)

end