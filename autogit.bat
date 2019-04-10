@echo off
:loop
git add -A
@rem git commit -am "%date% %time%"
git commit -am "%1 %2 %3 %4 %5 %6 %7 %8 %9"
git pull
git push
@rem timeout /t 300
@rem goto loop