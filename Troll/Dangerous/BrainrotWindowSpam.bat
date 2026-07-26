@echo off
setlocal enabledelayedexpansion
color 2

:: ===== Brainrot word list (English + Italian) =====
set words=ChimpanziniBananini BallerinaCappuccina skibidi rizz sigma gyatt fanum ohio npc goofy ahh mogging bussin tung sahur tungtungtung tungsahur tungtungtungsahur tralalelotralala brrrrrbrrrrpatapim cap slay bet fr jeem sigmaface skibiditoilet goonish ohiofinalboss skibidirizz gyattacus mewing alpha based cringe ohiofanum babygirl skibidirizzler brokie ratio sigmaedit browhat mid goated rizzy goofygoober npcwalk ohiofanumtax ligma devious ahhcore rizzler fanumtaxified aura drip brainrot sigmawarrior bro pazzesco assurdo zio frate tipo mammamia chefigata brozillo minchia brodi rizzatore sigma supremo skibidiitaliano fanumtax boombastico npcone assurdita giga gigaohio spaventoso bazinga toppissimo brocode gangsta napolizz rizzissimo sigmafaccione fratello assurdomode signorotto gigaalpha toppone

:: ===== Convert to array =====
set i=0
for %%w in (%words%) do (
    set /a i+=1
    set word[!i!]=%%w
)
set total=%i%

:loop
:: ---- Pick random number of words per popup (3–7) ----
set /a count=%random% %%5 + 3
set line=

for /l %%n in (1,1,!count!) do (
    set /a idx=!random! %% total + 1
    set line=!line! !word[%idx%]!
)

:: ---- Print to console ----
echo !line!

:: ---- Spawn popup asynchronously ----
set msg=!line!
start "" PowerShell -WindowStyle Hidden -Command "$ws=New-Object -ComObject WScript.Shell; $ws.Popup(\"!msg!\",0,\"Brainrot Alert\",64)"

:: ---- No delay for maximum spam ----
goto loop
