#!/bin/bash
sudo apt-get update
sudo apt-get install -y git

echo "User name: " && git config user.name
echo "User email: " && git config user.email

git clone https://github.com/Adrixop95/projektgit.git projektgit
cd projektgit

echo "Podaj nazwe nowego brancha "
read newbranch

if [[ $newbranch ]]; then
  git checkout -b ${newbranch}
else
  git checkout -b zaliczenie
fi


#Utworzony nowy branch za pomocą komendy checkout oraz przeniesienie do nowego rozgałęzienia"

echo -e ".gitignore\ntest3.txt\ntest4.txt\ntest5.txt\ntest6.txt">.gitignore

for x in apples oranges kiwis carrots
do
  echo "$x">>test1.txt
done

git add .
git commit -m "Add: test1.txt"

#Dodany plik test1.txt z pomocą petli for. Dodany także .gitignore

git checkout master
if [[ $newbranch ]]; then
  git merge ${newbranch}
else
  git merge zaliczenie
fi

echo "apple">>test1.txt

gcc readfile.c
./a.out test1.txt test2.txt >test3.txt

git add .
git commit -m "Cleared test1.txt"

#Przeniesienie do podstawowej gałęzi oraz użycie merge-a. Utworzenie pliku test3.txt z wynikiem działania programu readline.c

echo -e "apples\nkiwis">test2.txt

gcc readfile.c
./a.out test1.txt test2.txt >test4.txt

git checkout HEAD test2.txt

gcc readfile.c
./a.out test1.txt test2.txt >test5.txt

git reset HEAD~1
git checkout master test1.txt

#Cofnięcie do pierwszego utworzonego commitu i zresetowanie pliku test1.txt"

gcc readfile.c
./a.out test1.txt test2.txt >test6.txt

while [[ true ]]; do
  echo "Co dalej?"
  select y in "Utworzenie nowego remote-a oraz push reporytorium" "Usuniecie katalogu posiadającego reporytorium" "Wyświetlenie wyników readline.c" "Wyłączenie skryptu"
  do
    case $y in
      "Utworzenie nowego remote-a oraz push reporytorium") git remote remove origin; echo "Wpisz url git-a na który ma zostać zrobiony push"; read url; git remote add zaliczenie $url; git push zaliczenie ;;
      "Usuniecie katalogu posiadającego reporytorium") cd ..; rm -rf projektgit; exit ;;
      "Wyświetlenie wyników readline.c") echo -e "\n****** test3.txt ******"; more test3.txt;echo -e "\n****** test4.txt ******"; more test4.txt;echo -e "\n****** test5.txt ******"; more test5.txt;echo -e "\n****** test6.txt ******"; more test6.txt ;;
      "Wyłączenie skryptu") exit ;;
      *) echo "Nic nie wybrałeś"
    esac
    break
    done
done
