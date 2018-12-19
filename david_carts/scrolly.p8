pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
--scrolly

-- the coordinates of the upper left corner of the camera
cam_x = 0
cam_y = 0
anim = 0
 
function _update()
  if (btn(0) and cam_x > 0) cam_x -= 1
  if (btn(1) and cam_x < 895) cam_x += 1
  if (btn(2) and cam_y > 0) cam_y -= 1
  if (btn(3) and cam_y < 127) cam_y += 1
  -- (the camera stops with the bottom of
  -- the screen at row 32.)

  anim +=1

end
 
function _draw()
  cls()
  -- set the camera to the current location
  camera(cam_x, cam_y)
 
  -- draw the entire map at (0, 0), allowing
  -- the camera and clipping region to decide
  -- what is shown
  map(0, 0, 0, 0, 128, 32)
 
  -- reset the camera then print the camera
  -- coordinates on screen
  camera()
  print('('..cam_x..', '..cam_y..')', 0, 0, 7)

  -- player
  p_sprite_num = anim%2+5
  spr(p_sprite_num,63,63)


end

__gfx__
666666663333333344444444cccccccc333333330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
677777773333333344444444c7cc7ccc333b83330008800000088000000000000000000000000000000000000000000000000000000000000000000000000000
6777777733b333b344444944cccccccc33bbbb330088800008888000000000000000000000000000000000000000000000000000000000000000000000000000
677777773333333349444444cccccccc3b8bbb830004400000888000000000000000000000000000000000000000000000000000000000000000000000000000
67777777333b333344444444cccccccc3bbb8bb30004490800044000000000000000000000000000000000000000000000000000000000000000000000000000
677777773333333344494444cc7ccccc33bbbb330998898809944990000000000000000000000000000000000000000000000000000000000000000000000000
6777777733333b3344444494cccccc7c333443330088888800088800000000000000000000000000000000000000000000000000000000000000000000000000
677777773333333344444444cccccccc333443338880000000088800000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
10101020101010101010101010101010101030303030101010101010101010101010101020101010101010101010101010101020101010101010101010101010
10101010101010101010101010101010201010101010101010101010101010101010101010101010101010101010101010103010101010101010101010101010
10101020101010101010101010101010101010303010101010101010101010101010101020101010101010101010101010101020101010101010101010101010
10101010101010101010101010101010201010101010101010101010101010101010101010101010101010101010101010103010101010101010101010101010
10101020101010101010101010101010101010301010101010101010101010101010101020101010101010101010101010101020101010101010101010101010
10101010101010101010101010101010201010101010101010101010101010101010101010101010101010101010101010103010101010101010101010101010
10101020101010101010101010101010101010301010101010101010101010101010101020101010101010101010101010101020101010101010101010101010
10101010101010101010101010101010201010101010101010101010101010101010101010101010101010101010101010303030101010101010101040101010
10101020101010101010101010101010101010303010401010101010101010101010101020101010101010101010101010101020101010101010101010101010
10101010101010101010101010101010201010101010101010101010101040101010101010101010101010101010101010303030101010101010101010101010
10101020101010101010101010101010101010103010101010101010101010101010101020101010101010101010101040404020101010101010101010101010
10101010101010101010101010101010201010101010101010101010101010101010101010101010101010101010101010303030101010101010101010101010
10101020101010101010101010101010101010103010104040101010101010101010101020101010101010101010101040101020202020202020202020202020
20202020202020202020202020202020202020202020202010101010101010101010101010101010101010101010101010303030101010101010101010101010
10101020101010101010101010101010101010103010104010101010101010101010101020101010101010101010101010101010101010101010101010101010
10101010101010101010101010101010101010201010102020202020202020202020202020202020202020202020202020202020202020202020202020202020
20101020101010101010101010101010101010103010101010101010101010101010101020101010101010101010101010101010101010101010101010101010
10101010101010101010101010101010101010202010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
10101020101010101010101010101010101010103010101010101010101010101010101020101010101010101010101010101010101010101010101010101010
10101010101030303010101010101010101010102010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
10101020101010101010101010101010101010103030101010101010101010101010101020101010101010101010101010101010101010101010101010101010
10101010103030303010101010101010101010201010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
10101020101010101010101010101010101010101030303010101010101010101010101020101010101010101010101010101010101010101010101010101010
10101010303030303010101010101010101010201010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
10101020101010101010101010101010101010101010101030301010101010101010101020101010101010101010101010101010101010101010101010101010
10101040301030303010101010101010101010201010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
10101020101010101010101010101010101040101010101010303010101010101010101020101010101010101010101010101010101010101010101010101010
10101010301010101010101010101010101010201010101010101010101010101010101010101010303010101010101010101010101010101010101010101010
10101020101010101010101010101010104010101010101010103030101010101010101020101010101010101010101010101010101010101010101010101010
10101010301010101010101010101010101010201010101010101010101040101010101010103030303030101010101010101010101010101040101010101010
10101020101010101010101010101010101040101010101010101030301010101010101020101010101010101010101040101010101010101010101010101010
10101010301010101010101010101010101010201010101010101010101010101010101010303030303030303010101010101010101010101010101010101010
10101020101010101010101010101010101010101010101010101010303010101010101020101010101010101010101010101010101010101010101010101010
10101010301010101010101010101010101020101010101010101010101010101010101030103030303030303030301010101010101010101010101010101010
10101020101010101010101010101010101010101010101010101010103010101010101020101010101010101010101010101010101010101010101010101010
10101010301010101010101010101010101020101010101010101010101010101010103010303030303030301030303010101010101010101010101010101010
10102020101010101010101010101010101010101010101010101010101030101010101020101010101010101010101010101010101010101010101010101010
10101010301010101010101010101010101020101010101010101010101010101010103030303030301030303030303010101010101010101010101010101010
10102010101010101010101010101010101010101010101010101010101030301010101020101010101010101010101010101010101010101010101010101010
10101010301010101010101010101010101020101010101010101010101010101010303030303030303030303030303010101010101010101010101010101010
10102010101010101010101010101010101010101010101010101010101010301010101020101010101010101010101010101010101010101010101010101010
10101010103010101010101010101010101020101010101010101010101010101010303030303030303030304010303030101010101010101010101010101010
10102010101010101010101010101010101010101010101010101010101010103010101010101010101010101040101010101010101010401010101010101010
10101010103010101010101010101010101020101010101010101010101010104010303030303030303030303010303030101010101010101010101010101010
10102010101010101010101010101010101010101010101010101010101010103030101010101010101010101010101010101010101010401010401010101010
10101010103010101010101010101010101020101010101010101010101010401040303030303030303030103030303030101010101010101010101010101010
10102010101010101010101010101010101010101010101010104010101010101030301010101010101010101010101010101010101010101010101010101010
10101010103010101010101010101010102010101010101010101010101010104010303030303030303030303030303030101010101010101010101010101010
10102010101010101010101010101010101010101010101040401010101010101010301010101010101010101010101010101010101010101010101010101010
10101010103010101010101010101010102010101010101010101010101010101010103010303030303030303030303010101010101010101010101010101010
10102010101010101010101010101010101010101010101010101010101010101010303010101010101010101010101010101010101010101010101010101010
10101010103010101010101010101010102010101010101010101010101010101010103030303030303010303010303010101010101010101010101010101010
10102010101010101010101010101010101010101010101010101010101010101030303030101010101010101010101010101010101010101010101010101010
10101010103010101010101010101010102010101010101010101010101010101010101030303030303030301030301010101010401010101010101010101010
10102010101010101010101010101010101010101010101010101010101030303030303030303030303030101010101010101010101010101010101010101010
10101010103010101010101010101010102010101010101010101010101010101010101030303030301030303030101010101010101010101010101010101010
10102010101010101010101010101010101010101010101010101010103030303030303030303010101030303030303010101010101010101010101010101010
10101010103010101010101010101010102010101010101010101010101010101010101010303030303010101010101010101010101010101010101010101010
10102010101010101010101010101010101010101010101010101010103030303030303030301030303030303030303030101010101010101010101010101010
10101010103010101010101010101010102010104010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
10102010101010101010101010101010101010101010101010101010303030303030303030303030303030303030303030301010101010101010101010101010
10101010103010101010101010101010102010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
10102010101010101010101010101010101010101010101010101010303030303030303030303030303030303030303030301010101010101010101010101010
10101010303010101010101010101010102010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
__map__
0101010201010101010101010101010100010101010101010101010103010101010101010101010102010303010303030303010101010101010101010101010101010101030101010101010101010101010201010101010101010101010101010101010101010101010102010101010101010101010101010101010101010100
0101010201010101010101010101010100010101010101010101010101010101010101010101010102020101010101010103010101010101010101010101010101010101010101010101010101010101010201010101010101010101010101010101010101010101010102010101010101010101010101010101010101010100
0101010201010101010404040101010100010104040101010101010101040401010101010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101010201010101010101010101010101010101010101010101010102010101010101010101010101010101010101010100
0101010201010101010404040101010101010104010101010101010101040401010101010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101010201010101010101010101010101010101010101010101010102010101010101010101010101010101010101010100
0101010201010101010404010101010101010401010101010101010101040101010101010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101010201010101010101010101010101010101010101040101010102010101010101010101010101010101010101010100
0101010201010101010101010101010101040104010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101010201010101010101040101010101010101010101010101010102010101010101010101010101010101010101010100
0101010201010101010101010101010101010101010101010101010101010101010101010101010101020101010101010101010401010101010101010101010101010101010101010101010101010101010201010101010101010101010101010101010101010101010102010101010101010101010101010101010101010100
0101010201010101010101010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101010201010101010101010101010101010101010101010101010102010101010101010101010101010101010101010100
0101010201010101010101010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101010201010101010101010101010101010101010101010101010102010101010101010101010101010101010101010100
0101010201010101010101010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101010201010101010101010101010101010101010101010101010102010101010101010101010101010101010101010100
0101010201010101010101010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101010201010101010101010101010404010101010101010101010102010101010101010101010101010101010101010100
0101010202020202020202020202020202020202020202020202020202020202020202020202020202020202020101010101010101010101010101010101010101040101010101010101010101010101010201010101010101010101010104010101010101010101010102010101010101010101010101010101010101010100
0101010201010101010101010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010401010101010101010101040101010201010101010101010103030401010101010101010101010102010101010101010101010101010101010101010100
0101010201010101010101010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010103030301040401010101010101010101010101010201010101010101010103030301010101010101010101010102010101010101010104040101010101010101010100
0101010201010101010101010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010103030301010101010101010101010101010101010201010101010101010101030301010101010101010101010102010101010101010104040103030303030303030303
0101010201010101030303010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101030101010101010101010101010101010101010201010101010101010101010101010101010101010101010102010101010101010101030303010101010101010100
0101010201010101030303010101010101010101010101010101010101010101010401010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101010201010101010101010101010101010101010101010101010102010101010101010303010101010101010101010100
0101010201010101030303030101010101010401010101010101010101010101040101010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101010201010101010101010101010101010101010101010101010102010101010101010301010101010101010101010100
0101010201010101030303030101010101040404010101010101010101010101040104010101010101020101010101010104010101010101010101010101010101010101010101010101010101010101010201010101010104010101010101010101010101010101010102010101010101010301010101010101010101010100
0101010201010101010303030101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101010201010101010101010101010101010101010101040101010102010101010101030301010101010101010101010100
0101010201010101010303010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101010201010101010101010101010101010101010101010101010102010101010101030101010101010101010101010100
0101010201010101010101010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010102010101010101030301010101010101010101010100
0101010201010101010101010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010102010101010101010301010101010101010101010100
0101010201010101010101010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101020202020202020202020202020202020202020101010101010102010101010101010301010101010101010101010100
0101010201010101010101010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010202010102020202010101010101010301010101010101010101010101
0101010202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010101010101010101010301010101010101010101010101
0101010201010101010101010101010101010101010101010101010101010101010101020101010101020101010101010101010102010101010101010101010101010101010101010104010101010101020101010101010101010101010101010101010101010101010101010101010101010301010101010101010101010101
0101010201010101010101010101010101010101010101010101010101010101010101010201010101010101010101010101010102010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010101010101010101010301010101010104010101010101
0101010201010101010101010101010101010101010101010101010101010101010101010201010101010101010101010101010202010101010101010101010101010101010101010101010101010101020101010101010104010101010101010101010101010101010101010101010101010301010101010101010101010101
0101010201010101010101010101010101010101010101010101010101010101010101010201010101010101010101010101010201010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010104010101010101010101010101010301010101010101010101010101
0101010201010101010104040101010101010303030101010101010101010101010101010201010101010401010101010101010201010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010101040401010101010301010101010101010101010101
0101010201010101010101010401010101010303030301010101010101010101010101010201010101010401010101010101010201010101010101010101010101010101010101010101010101010101020101010101010101010101010101010101010101010101010101040104010101010301010101010101010101010101
