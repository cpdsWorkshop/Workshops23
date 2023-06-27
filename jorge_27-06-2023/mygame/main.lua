function love.load()
    --Escreve o cÃ³digo para carregar a imagem na linha baixo
    imagem = love.graphics.newImage("nave1.png")
    posicaoX = 0
  posicaoY = 0
end


function love.draw()
    love.graphics.print("Ola mundo!", 100, 100);
    --Escreve o cÃ³digo para desenhar a imagem na linha baixo
    love.graphics.draw(imagem, 100, 100, 0, 1, 1)
end

function love.update(dt)

end