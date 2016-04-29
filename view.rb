require 'colorize'

class View

  def banner
    puts "██╗  ██╗██╗██████╗ ███████╗     █████╗ ███╗   ██╗██████╗     ███████╗ ██████╗ ██╗   ██╗███████╗ █████╗ ██╗  ██╗
██║  ██║██║██╔══██╗██╔════╝    ██╔══██╗████╗  ██║██╔══██╗    ██╔════╝██╔═══██╗██║   ██║██╔════╝██╔══██╗██║ ██╔╝
███████║██║██║  ██║█████╗      ███████║██╔██╗ ██║██║  ██║    ███████╗██║   ██║██║   ██║█████╗  ███████║█████╔╝
██╔══██║██║██║  ██║██╔══╝      ██╔══██║██║╚██╗██║██║  ██║    ╚════██║██║▄▄ ██║██║   ██║██╔══╝  ██╔══██║██╔═██╗
██║  ██║██║██████╔╝███████╗    ██║  ██║██║ ╚████║██████╔╝    ███████║╚██████╔╝╚██████╔╝███████╗██║  ██║██║  ██╗
╚═╝  ╚═╝╚═╝╚═════╝ ╚══════╝    ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝     ╚══════╝ ╚══▀▀═╝  ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝

".colorize(:yellow)
  puts "         _   _
        (q!_/p)
         /. .!         __
  ,__   =!_t_/=      .'o O'-.
     )   /   !      / O o_.-`|   _   _
    (   ((   ))    /O_.-'  O |  (q!_/p)
     !  /!) (/!    | o   o  o|   /. .!.-****-.     ___,
      (-!  Y  /    |o   o O.-|  =!_t_/=     /  `!  (
         nn^nn     | O _.-'       )! ))__ __!   |___)
                   '--`          (/-(/`  `nn---'".colorize(:yellow)
  end

  def welcome
    puts "\nWho's hiding and squeaking in your neighborhood?\n".colorize(:light_blue)
  end

  def display_zip_prompt
    puts "\nWhat's your zip code?".colorize(:green)
    print "\n>> "
  end

  def input
    gets.chomp
  end

  def repeat
    puts "\n\n\n\n Enter another zip code.".colorize(:green)
    print "\n>> "
  end

  def loading
    puts "\n\n"
    trail = ""
    6.times do
    trail << ".".colorize(:magenta)
    print trail+"squeak!".colorize(:magenta)
    sleep(0.1)
    end
  end

  def display_result(result, total, percentage)
    puts "\n#{result.to_i}".colorize(:yellow) + " out of" + " #{total.to_i}".colorize(:cyan) + " inspections failed"
    puts "\n#{percentage}% were infested".colorize(:red)
  end

  def display_level_1
    puts "\nLiving the rat-free life!"
    puts "       _   _
      (q!_/p)
       /. .!
      =!_t_/=   __
       /   !   (
      ((   ))   )
      /!) (/!  /
      !  Y  /-'
       nn^nn"
  end

  def display_level_2
    puts "\n...Could be worse"
    puts "      _   _
     (q!_/p)
      /. .!.-''''-.      ___
     =!_t_/=    /  `!   (
       )! ))__ _!    |___)
      nn-nn`  `nn---'"
  end

  def display_level_3
    puts "\nTime to get a cat! MEOW"
    puts "               _     __,..---**-._                 ';-,
        ,    _/_),-*`             '-.                `!!
       !|.-*`    -_)                 '.                ||
       /`   a   ,                      !              .'/
       '.___,__/                 .-'    !_        _.-'.'
          |!  !      !         /`        _`******`_.-'
             _/;--._, >        |   --.__/ `******`
           (((-'  __//`'-......-;!      )
                (((-'       __//  '--. /
                          (((-'    __//
                                 (((-'"
  end

  def display_level_4
    puts "\nThat's nasty.\n\n\n"
    puts "       __             _,-*~^*-.
     _// )      _,-*~`         `.
   .* ( /`*-,-*`                 ;
  / 6                             ;
 /           ,             ,-*     ;
(,__.--.      !           /        ;
 //'   /`-.!   |          |        `._________
   _.-'_/`  )  )--...,,,___!     !-----------,)
 (((*~` _.-'.-'           __`-.   )         //
       (((*`             (((---~*`         //
                                          ((________________
                                          `----****~~~~^^^```"
  end

  def display_level_5
    puts "\nRUN!!! Time to find a new place."
    puts "        _______________________
       |                       |
       |  ~ Move & Squeak ~ ___|
       |                    |----.
       |  *get outta there* | |O,|____
  @    |  .-.               | -  .-.  |
  `@@ =(_| @ |______________|___| @ |_)
          `-'                    `-'"
  end

end
