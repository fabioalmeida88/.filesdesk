sudo apt-get install i3      
sudo apt-get install i3lock #no ubuntu i3,i3lock,i3bar e dmenu baixa automatico 
sudo apt-get install i3blocks           
sudo apt-get install rofi                            //(substituto dmenu)
sudo apt-get install feh                             //(colocar wallpaper)
sudo apt-get install lxappearance                    //(alterar a aparencia)
sudo apt-get install compton                         //(transparencia)
sudo apt-get install zsh                             //(shell)
sudo apt-get install mplayer                         //(player de musica e video)
sudo apt-get install scrot                           //(screenshot)

sudo add-apt-repository ppa:dawidd0811/neofetch #
sudo apt update                                 #    //(neofetch ubuntu 16.10)
sudo apt update                                 #

sudo apt-get install neofetch                   #    //(neofetch ubuntu 17.04 and up)

sudo apt-get install w3m-img                         //(imagem no terminal neofetch)
sudo apt-get install imagemagick                     //(criar crop no neofectch)

--------------------opcional----------------

sudo apt-get install suckless-tools                  //(dmenu)
sudo apt-get install cmatrix                         //(script do matrix no terminal)
sudo apt-get install tty-clock                       //(relogio no terminal)
sudo apt-get install git

--------------------------------------------
#reconfigurar o teclado caso seja preciso

sudo dpkg-reconfigure keyboard-configuration

#selecionar
Inglês (EUA) - Inglês (EUA, alternativo internacional) 

#usar o cdilha
(acento agudo) ' + (c) = ç

--------------------------------------- 
######## neofetch config ########

#editar o scrip em : /etc/neofetch/config
#procurar por wallpaper
#alterar de "ascii" para "w3m"
#alterar "source" para "wallpaper"
#offset y 5
#offset x 5


----------------------------------------
#trocar o bash pelo zsh

which zsh

chsh -s /usr/bin/zsh

#instalar o ohmyzsh
 
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

---------------------------------------------------------------------

#instalar as powerline fonts

# clone
git clone https://github.com/powerline/fonts.git
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

---------------------------------------------------------------------

#powerline9k
$ git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#depois alterar em ~/.zshrc 
ZSH_THEME="powerlevel9k/powerlevel9k"


*****não esquecer de trocar as fontes nas preferencias do terminal

meslo lg s dz 11

*****fonte atual*****
                    *
meslo lg S 10       *
                    *
      e             *
                    * 
skin "bira"         *
                    *
*********************

-------------------------------------------------------------

############(media control)############

https://github.com/acrisci/playerctl/releases

-------------------------------------------------------------

##########(icones da taskbar)##########

https://github.com/FortAwesome/Font-Awesome/releases

----------INSTALL--------

criar um dir ~/.fonts

extrair 

copiar o arquivo .ttf para

~/.fonts

(escolher os icones) 
http://fontawesome.io/cheatsheet/


----------------------------------------

#Tutorial Mplayer

mplayer -fs zoom (recomendado)
mplayer -fs center
"f" fullscreen
setas "◄" "►"  avançam 10 segundos 
setas "▲" "▼" avançam 1 minuto
"Pageup" e "Pgdown" avançam 10 minutos
"o" mostra informação de tempo
"spaço" play/pause
"q" quit
"9" e "0" volume
"z" e "x" atrasam/adiantam legenda
"v"ativa legenda
"-" "=" audio-video delay (quando a voz esta mais adiantanda que a imagem) 


-----------------------------------------

#criar um atalho no shell 
#add na ultima linha do .zshrc
alias atalho="comando"
Exemplo: 
alias music="spotify"


----------------------------------------

#Scrot flags

-cd "5" #flag de cooldown
-s #flag para selecionar uma area especifica 

------------------------------

#dmenu 

#bindsym $mod+d exec dmenu_run -nb black -sb black -sf red -nf white -l 10

#rofi
bindsym $mod+d exec rofi -show run -lines 5 -eh 2 -width 100 -padding 400 -opacity "88" -bw 0 -bc black -bg black -fg white -hlbg black -columns 1 -font "FreeSans 20" -hlfg red

------------------------------------------

#sumir com a janela na workspace

bindsym $mod+Shift+KP_Subtract move scratchpad
bindsym $mod+Shift+KP_Add scratchpad show

----------------------------------------------

#remover a barra de titulo
new_window 1pixel
bindsym $mod+t border normal 0
bindsym $mod+u border none

---------------------------------------------

set $workspace1 "1 "
set $workspace2 "2 "
set $workspace3 "3 "
set $workspace4 "4 "
set $workspace5 "5 "
set $workspace6 "6 "
set $workspace7 "7 "
set $workspace8 "8 "
set $workspace9 "9 "
set $workspace10 "10 "

# switch to workspace
bindsym $mod+1 workspace $workspace1
bindsym $mod+2 workspace $workspace2
bindsym $mod+3 workspace $workspace3
bindsym $mod+4 workspace $workspace4
bindsym $mod+5 workspace $workspace5
bindsym $mod+6 workspace $workspace6
bindsym $mod+7 workspace $workspace7
bindsym $mod+8 workspace $workspace8
bindsym $mod+9 workspace $workspace9
bindsym $mod+0 workspace $workspace10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace $workspace1
bindsym $mod+Shift+2 move container to workspace $workspace2
bindsym $mod+Shift+3 move container to workspace $workspace3
bindsym $mod+Shift+4 move container to workspace $workspace4
bindsym $mod+Shift+5 move container to workspace $workspace5
bindsym $mod+Shift+6 move container to workspace $workspace6
bindsym $mod+Shift+7 move container to workspace $workspace7
bindsym $mod+Shift+8 move container to workspace $workspace8
bindsym $mod+Shift+9 move container to workspace $workspace9
bindsym $mod+Shift+0 move container to workspace $workspace10

------------------------------------------

#sempre inciar um progama em uma workspace 

#usar comando xprop para pegar a string ; usar a segunda "string"
EX:
assign [class="string"] $workspace1

--------------------------------------
#usar imagem de fundo no i3lock (somente png)

bindsym $mod+shift+x exec i3lock -i ~/Imagens/imagem.png


-------------------------------------------
#colar em baixo do bindsym $mod+r mode "resize"

# class                 border  backgr. text    indicator child_border
client.focused          #2f2f2f #2f2f2f #ffffff #2e9ef4   #285577
client.focused_inactive #333333 #5f676a #ffffff #484e50   #5f676a
client.unfocused        #333333 #222222 #888888 #292d2e   #222222
client.urgent           #2f343a #900000 #ffffff #900000   #900000
client.placeholder      #000000 #0c0c0c #ffffff #000000   #0c0c0c

client.background       #ffffff


------------------------------------------

copiar o arquivo original em /etc/ e colocar na pasta .config do i3 

status_command i3blocks -c ~/.config/i3/i3blocks.conf
                                                             
bar {                                   
        status_command i3blocks -c ~/.config/i3/i3blocks.conf          
       trayprimary_output                
}                                        
                                         
**** remover o ""trayprimary_output"" para icones como discord e steam aparecerem na barra

*colar embaixo da linha de status
                                                    
colors {                                            
        background #000000                          
        statusline #ffffff                          
        separator #666666                           
                                                    
        focused_workspace  #ffffff #000000 #ffffff  
        active_workspace   #333333 #5f676a #ffffff  
        inactive_workspace #333333 #222222 #888888  
        urgent_workspace   #2f343a #900000 #ffffff  
        binding_mode       #2f343a #900000 #ffffff  
}                                                   
..............................................

# Pulse Audio controls
bindsym $mod+F3 exec --no-startup-id pactl set-sink-volume 0 +5% #increase sound volume
bindsym $mod+F2 exec --no-startup-id pactl set-sink-volume 0 -5% #decrease sound volume
bindsym $mod+F4 exec --no-startup-id pactl set-sink-mute 0 toggle # mute sound

# Media player controls
bindsym $mod+F7 exec playerctl play-pause
bindsym $mod+F6 exec playerctl next
bindsym $mod+F5 exec playerctl previous

---------------------------------------------

# Set wallpaper (need to install feh)

exec_always --no-startup-id feh --bg-center ~/Imagens/wallpaper.jpg

# efeito trasparencia do compton

exec_always --no-startup-id compton -f -D 4 


floating_maximum_size 880 x 440
floating_minimum_size 880 x 440

# esconder a borda colorida que indica pra qual lado sera feita a divisao

hide_edge_borders both

#### filemanager pode mudar dependendo da distro ###

bindsym $mod+Shift+t exec thunar
bindsym $mod+Shift+g exec google-chrome
bindsym $mod+Shift+F7 exec clementine 
-----------------------------------------


                
-----------------------------------------

# Pulse Audio controls
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume 0 +5% #increase sound volume
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume 0 -5% #decrease sound volume
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute 0 toggle # mute sound

# Sreen brightness controls
bindsym XF86MonBrightnessUp exec xbacklight -inc 20 # increase screen brightness
bindsym XF86MonBrightnessDown exec xbacklight -dec 20 # decrease screen brightness

# Touchpad controls
bindsym XF86TouchpadToggle exec /some/path/toggletouchpad.sh # toggle touchpad

# Media player controls
bindsym XF86AudioPlay exec playerctl play
bindsym XF86AudioPause exec playerctl pause
bindsym XF86AudioNext exec playerctl next
bindsym XF86AudioPrev exec playerctl previous

