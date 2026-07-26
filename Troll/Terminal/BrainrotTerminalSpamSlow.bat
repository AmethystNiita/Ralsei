@echo off
color 2
setlocal enabledelayedexpansion

:: English + Italian brainrot mix
set words=skibidi rizz sigma gyatt fanum ohio npc goofy ahh mogging bussin cap slay bet fr fr ong sigmaface skibiditoilet goofy goonish ohiofinalboss skibidirizz gyattacus mewing alpha based cringe ohiofanum babygirl skibidirizzler brokie ratio sigmaedit browhat mid goated rizzy goofygoober skibidi sigma npcwalk ohiofanumtax ligma devious ahhcore rizzler fanumtaxified aura drip brainrot sigmawarrior bro pazzesco assurdo zio frate tipo mamma mia chefigata cringe brozillo minchia brodi rizzatore sigma supremo skibidiitaliano fanumtax boombastico npcone assurdità giga gigaohio spaventoso bazinga toppissimo brocode gangsta napolizz rizzissimo sigmafaccione fratello assurdomode signorotto gigaalpha toppone

:loop
set line=
for /l %%i in (1,1,10) do (
    set /a num=%random% %%100 + 1
    set j=0
    for %%w in (%words%) do (
        set /a j+=1
        if !j! equ !num! set "rand=%%w"
    )
    set line=!line! !rand!
)
echo !line!
goto loop

