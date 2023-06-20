pico-8 cartridge // http://www.pico-8.com
version 38
__lua__
function _init()
    create_player()
end
function _update()
    player_movement()
end
function _draw()
    draw_map()
    draw_player()
end
-->8
function create_player()
    p = { x = 48, y = 48, sprite = 128 }
end
function player_movement()
    newx = p.x
    newy = p.y
    
    if(btn(➡️)) newx+=1
				if(btn(⬅️)) newx-=1
				if(btn(⬆️)) newy-=1
				if(btn(⬇️)) newy+=1
    if check_flag(0, newx, newy) then
    else
        p.x = newx
        p.y = newy
    end
end
function draw_player()
    spr(p.sprite, p.x, p.y, 2, 2)
end
-->8
function draw_map()
				cls()
    map(0, 0, 0, 0)
end
function check_flag(flag, x, y)
    local sprite = mget(x / 8, y / 8)
    return fget(sprite, flag)
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000333000033300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000343000034300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0003b3b0003b3b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
033b300033b300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
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
00499999000000003349999999999999999994000000000000000000999994330009994099994333999999999999999999988887778887778877778887778877
00499999000044443349999999999999999994004444444444400000999994330000994499942323999999999999999999888877788877778887778887778887
00499999000499993349999999999999999994009999999999940000999994330000999999427872999955555599999999888777888877788887778888777888
00499999000499993349999999999999999994009999999999940000999994330000099994338a83999555555555999998888777888777788887777888777788
0049999900499999334499999b99999999999400999999999aa94000999944330000000043327872995555000555599998887777888777788888777888777788
00499999004999993334444444b444449999940099999999aaaa4000999943330000000033332b2b955550050055559988887777888777888888777788877778
00499999004999993333333333b333b39999940099999999aa7a9400999943330000000033333bb3955505555505559988887777888777888888777788887778
00499999004999993333333333333b339999940099999999aa7a9400999943330000000033333b33955055665550559988877778887778888888877788887777
778999999999940000499999999ff4449999999944444444444ff99999940000000049990000000095505556655055999994444499940000aaaa940000000000
7778999999999400004999994fff444499999999444444444444fff499940000000049990000000095505555555055999994fff499940000aaaa940000000000
8778899999999400004999999999999999999999999999999999999999940000000049990000000095505556555055999994fff499940000aa8a940000000000
8777889999999400004999999999999999999999999999999999999999940000000049990000000095550565550055b999944444999400009aa9940000000000
88778889999994000049999999999999999999999999999999999999999400000000499900000000bb55055555055bb999944444999444449999940000000000
887777888999940000499998999999999999999999999999999999999994000000004999000000004b55505550055b4499944fff999444449999940000000000
888777788899940000499988999999999999999999999999999999999994000000004999000000003b3555000055bb3399944fff999444449999940000000000
888877788889940000499888999aaaaa99999999aaaaaaaaaaaaa999999400000000499900000000333355555553333399944444999444449999940000000000
51111111555555555555555566666666000000000000000000000000000000000000000000000000000000000000000099999999000000000000000000000000
51111111111111151111111166666666000000000000555500000000000000000000000000000000000000000000000099999999000000004440000000000000
51111111111111151111111166666666000000000000533500000000555555550000000044444444000000000000000099999999000000009994000000000000
511111111111111511111111666666660000000000005555000000005555555500000000fff44ff4000000000000000099999999000000009994000000000000
51111111111111151111111166666666000000000000005000000000553333550000000044444444444444444444444499999999000000009999400000000000
51111111111111151111111166666666000000000055555000000000553333550000000044fff444444444444444444499999999000000009999400000000000
5555555511111115111111116666666600000000056866d5000000005555555500000000444444ffffffff4444ffff44aaaaaaaa000000009999940000000000
00000000111111151111111166666666000000005555555500000000555555550000000044444444ffffff4444ffff4499999999000000009999940000000000
55555555111111151111111166656666666566666665666600000000000055000000000000000000444444444444444400000000000000000000000000000000
51111111111111151111111166656666666d66666665666600000000000055000000000000000000444444444444444400000000000000000000000000000000
511111111111111511111111665556666665666666656666000055555555550000000000000000004444ffffff44444400000000000000000000000000000000
511111111111111511111111665656666655566666655666000055555555550000000000000000004444ffffff44444400000000000000000000000000000000
511111111111111511111111665656666d65656666655666005566886666dd550000000000000000444444444444ffff00000000000000000000000000000000
51111111111111151111111166d65666656565666665d666005566886666dd550000000000000000444444444444ffff00000000000000000000000000000000
51111111555555555555555566565666656565666665566655555555555555550000000000000000444444444444444400000000000000000000000000000000
51111111000000000000000066666666666666666665666655555555555555550000000000000000444444444444444400000000000000000000000000000000
000eeeeeeeeee0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000eeeeeeeeee0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000ffffffffee0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000ffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000f4fff4fffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000fffffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000ffffffffffa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000ffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00008888888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00008888888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08878888888878800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08877777777778800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
088777d77d7778800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
088777dddd7778800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
f88777dddd7f88800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
f8877777777f88800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010101010100010101010101010100010001010101000000010100000000000000000101000101010000000000000001010101010000010100000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
5f5f5f5f5f5f5f5f5f706262626262615f5f5f5f5f5f5f5f5f5f5f5f7b7b5656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5f5f5f5f5f5f5f7e7e607272727272715f5f5f5f5f5f5f5f5f5f5f5f7b7b5656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5f414545454545454545454545456e5f5f5f5f5f5f5f5f5f5f5f5f5f797b5656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5f524c4d4d4d4d4d4e4e4e4e4e50515f5f5f5f5f5f5f5f5f5f5f5f5f797b5656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5f40576373757463636363636358445f5f5f5f5f5f5f5f5f5f5f5f5f797b5656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5f40576363636363636363636358445f5f5f5f5f5f5f5f5f5f5f5f5f797b5656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5f40576464646464646464646458445f5f5f5f5f5f5f5f5f5f5f5f5f79795656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5f4057646464646464646464645854465f5f5f5f5f5f5f5f5f5f5f5f79795656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5f40576d6d6d6d6d6d6d64666758545e5f5f5f5f5f5f5f5f5f5f5f5f79795656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5f405c7a7b7a7b7a7b7a7b76775854445f5f5f5f5f5f5f5f5f5f5f5f79795656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5f4053555555555555555555555654445f5f5f5f5f5f5f5f5f5f5f5f79795656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5f406c6c6c6c6c6c6c6c6c6c6c6c54445f5f5f5f5f5f5f5f5f5f5f5f79795656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5f40544a4b6c6c6c6c6c6c4a4b5454475f5f5f5f5f5f5f5f5f5f5f5f79795656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5f42435a5b4343434343435a5b4343495f5f5f5f5f5f5f5f5f5f5f5f79797979797979565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f797b5656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f5f7b7b5656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e56565656565656565656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e6e56565656565656565656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
5656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656565656560000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
