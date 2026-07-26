@echo off
setlocal enabledelayedexpansion
color 2

:: Brainrot words (English + Italian)
set words=skibidi rizz sigma gyatt fanum ohio npc goofy ahh mogging bussin cap slay bet fr fr ong sigmaface skibiditoilet goofy goonish ohiofinalboss skibidirizz gyattacus mewing alpha based cringe ohiofanum babygirl skibidirizzler brokie ratio sigmaedit browhat mid goated rizzy goofygoober skibidi sigma npcwalk ohiofanumtax ligma devious ahhcore rizzler fanumtaxified aura drip brainrot sigmawarrior bro pazzesco assurdo zio frate tipo mamma mia chefigata cringe brozillo minchia brodi rizzatore sigma supremo skibidiitaliano fanumtax boombastico npcone assurdità giga gigaohio spaventoso bazinga toppissimo brocode gangsta napolizz rizzissimo sigmafaccione fratello assurdomode signorotto gigaalpha toppone

:: Convert word list into an indexed array
set i=0
for %%w in (%words%) do (
    set /a i+=1
    set word[!i!]=%%w
)
set total=%i%

:loop
set line=
:: random number of words per line (8–16)
set /a count=%random% %%9 + 8

for /l %%n in (1,1,!count!) do (
    :: random index between 1 and total
    set /a idx=!random! %% total + 1
    set line=!line! !word[%idx%]!
)

echo !line!
ping -n 1 -w 120 127.0.0.1 >nul
goto loop
