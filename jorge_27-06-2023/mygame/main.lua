function love.load()
    --Escreve o cÃ³digo para carregar a imagem na linha baixo
    imagem = love.graphics.newImage("nave1.png")
    posicaoX = 0
  posicaoY = 0
end


function love.draw()
    --Escreve o cÃ³digo para desenhar a imagem na linha baixo
    love.graphics.draw(imagem, posicaoX, posicaoY, 0, 1, 1)
end

function love.update(dt)

end