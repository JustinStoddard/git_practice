require 'colorize'
require_relative 'git'

class MAIN
    include Git
    def menu
        puts "MAIN MENU".colorize(:cyan)
        puts '1: Enter Git Command'.colorize(:cyan)
        puts '2: Exit'.colorize(:cyan)
        choice = gets.to_i
        case choice
            when 1
                puts 'Enter Git Command'.colorize(:blue)
                puts_git(gets.strip)
                menu
            when 2
                exit
            else
                puts 'Invail Input'.colorize(:red)
                menu
        end
    end
end

Main.menu