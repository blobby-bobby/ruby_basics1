def roll_dice
    return rand(6)+1
  end

def analyze_dice(dice)

    puts "Tu as jeté le dé et tu as fait : #{dice} !!!" 
    if dice == 1
        puts "Tu es descendu d'une marche, c'est la loose !"
        return -1
    elsif dice >= 5
        puts "Bravo, tu viens de monter sur la marche suivante !" 
        return 1
    else
        puts "Tu restes où tu es !"
        return 0
    end
end

def show_state(num)
    puts "Grimpe encore l'ami ! Tu es sur la marche n° #{num}"
  end

def is_over?(num)
  if num == 10
    return true
  else
    return false
  end
end

def play
    puts "Bienvenue dans le jeu de l'escalier !"
    puts "Essaie de grimper les marches, pour atteindre la gloiiiiiiire !!!"
  
    step = 1
    show_state(step)
  
    while(!is_over?(step)) do
      puts "tapez 'Entrée' pour jouer"
      gets.chomp
      step += analyze_dice(roll_dice)
      show_state(step)
    end
  
    puts "===Tu as gagné!==="
  end

play