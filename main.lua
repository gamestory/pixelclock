function love.load()
  size=20
  h=0
  m=0
  s=0
  fontmap = {
    {
      {1,1,1},
      {1,0,1},
      {1,0,1},
      {1,0,1},
      {1,1,1}
    },
    {
      {0,0,1},
      {0,0,1},
      {0,0,1},
      {0,0,1},
      {0,0,1}
    },
    {
      {1,1,1},
      {0,0,1},
      {1,1,1},
      {1,0,0},
      {1,1,1}
    },
    {
      {1,1,1},
      {0,0,1},
      {1,1,1},
      {0,0,1},
      {1,1,1}
    },
    {
      {1,0,1},
      {1,0,1},
      {1,1,1},
      {0,0,1},
      {0,0,1}
    },
    {
      {1,1,1},
      {1,0,0},
      {1,1,1},
      {0,0,1},
      {1,1,1}
    },
    {
      {1,1,1},
      {1,0,0},
      {1,1,1},
      {1,0,1},
      {1,1,1}
    },
    {
      {1,1,1},
      {0,0,1},
      {0,0,1},
      {0,0,1},
      {0,0,1}
    },
    {
      {1,1,1},
      {1,0,1},
      {1,1,1},
      {1,0,1},
      {1,1,1}
    },
    {
      {1,1,1},
      {1,0,1},
      {1,1,1},
      {0,0,1},
      {1,1,1}
    },
    {
      {0,0,0},
      {0,1,0},
      {0,0,0},
      {0,1,0},
      {0,0,0}
    },
  }
end

function is_empty(x,y)
  return tilemap[x][y]==0
end

function love.keypressed(k)
end

function love.update(t)
  h=os.date('%H')
  m=os.date('%M')
  s=os.date('%S')
end

function num(n,x,y)
  for i,row in ipairs(fontmap[n+1]) do
    for j,tile in ipairs(row) do
      if tile==1 then
        love.graphics.rectangle("fill",j*size-size+x*size,i*size-size+y*size,size-1,size-1)
      end
    end
  end
end

function love.draw()
  -- h
  num(math.floor(h/10),1,1)
  num(math.modf(h%10),5,1)
  -- :
  num(10,8,1)
  -- m
  num(math.floor(m/10),11,1)
  num(math.modf(m%10),15,1)
  -- :
  num(10,18,1)
  -- s
  num(math.floor(s/10),21,1)
  num(math.modf(s%10),25,1)
end