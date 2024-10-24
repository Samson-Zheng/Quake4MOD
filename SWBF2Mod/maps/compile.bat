@echo off

cd\
cd C:\Program Files (x86)\Steam\steamapps\common\Quake 4\SWBF2Mod\maps


echo Copying Files...
copy C:\Program Files (x86)\Steam\steamapps\common\Quake 4\SWBF2Mod\maps\starwars.map C:\Program Files (x86)\Steam\steamapps\common\Quake 4\SWBF2Mod\maps


echo Converting map...
C:\Users\Alienware\Desktop\tyrutils\bin\convmap.exe -f32 -i starwars
move /y starwars.out starwars.map


echo --------------QBSP--------------
C:\Users\Alienware\Desktop\tyrutils\bin\qbsp.exe starwars

copy starwars.bsp C:\Program Files (x86)\Steam\steamapps\common\Quake 4\SWBF2Mod\maps
copy starwars.pts C:\Program Files (x86)\Steam\steamapps\common\Quake 4\SWBF2Mod\maps
copy starwars.lit C:\Program Files (x86)\Steam\steamapps\common\Quake 4\SWBF2Mod\maps
cd\
cd C:\Program Files (x86)\Steam\steamapps\common\Quake 4
Quake4 +set fs_game SWBF2Mod +map starwars
