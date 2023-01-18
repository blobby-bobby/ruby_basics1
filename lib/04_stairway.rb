def start_game
    puts "Bienvenue dans le jeu de l'escalier !"
    puts "Tu es en bas de l'escalier, pour tenter ta chance et grimper les marches ..."
    puts "Pour l'instant, tu es sur la marche zéro, tout en bas"
    puts "LANCE LE DE, L'AMI ! Ecris 'l' pour jouer"
    gets.chomp
end

def analyse_dice
    step = 0
    dice_resultat = rand (1..6)
    puts "Tu as jeté le dé et tu as fait : #{dice_resultat} !!!" 

    if dice_resultat == 1
        step -=1
        puts "Tu es descendu à la marche n°#{step}, c'est la loose !"
    elsif dice_resultat >= 5
        step +=1
        puts "Bravo, tu viens de monter sur la marche n°#{step} !" 
    else
        puts "Tu restes où tu es !"
    end
    puts "Plus que #{10 - step} marches avant la victoire !"
end

def reload_dice
    puts "----OwO-----"
    puts "Il te reste des marches à gravir !"
    puts "Relance donc le dé l'ami, appuie sur 'l' !"
    gets.chomp
end

def the_end(step)
    if step == 10
      puts " tu as gagné !"
    else step < 10
      reload_dice
    end
end

def perform
    start_game
    analyse_dice
end

perform