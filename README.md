# Arch Linux Kira's setup 
## Настройка Arch Linux после установки

Window manager(bswpm), keybord(sxhkd), menu(rofi), bar(polybar), terminal(alacritty)

	sudo pacman -S pacman -S bspwm sxhkd rofi polybar alacritty

Xorg/X11
	
	sudo pacman -S xorg xorg-server xorg-xinit xorg-xset xorg-xsetroot xorg-xrandr xorg-xrdb


Fonts
	
	pacman -S gnu-free-fonts

Video Drivers:
	
	xf86-video-amdgpu - новый, свободный драйвер для видеокарт AMD.
	
	xf86-video-ati - старый свободный драйвер для AMD.
	
	xf86-video-intel - драйвер для встроенной графики Intel.

	xf86-video-nouveau - свободный драйвер для карт NVIDIA.

	xf86-video-vesa - свободный драйвер, поддерживающий все карты, ограниченная функциональность. Для виртуальной машины.

	xf86-video-qxl - свободный драйвер виртуальной видеокарты, ограниченная функциональность. Для виртуальной машины. (Отсутствует в пакетах Artix)

	nvidia - проприетарный драйвер для NVIDIA.

.Condig

	cp .config ~/
	
	cp .xinitrc ~/

Wallpapers
	
	sudo pacman -S feh
	feh --bg-scale ~/path/wallpapers/wallpaper.jpg


Bspwm и sxhkd запускаются автозагрузкой в .xinitrc, но все сторонние преложения запускаются через ~/.confir/bspwm/bspwmrc

Install YAY

	pacman -Sy --needed git base-devel
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si

Install picom with yay
	
	yay -S picom-git


## Additional!
    sudo pacman -S neovim
    sudo pacman -S ranger
    
Zsh

    sudo pacman -S zsh
    install ohmyzsh
    chsh -s /bin/zsh
    source ~/.zshrc

Display brightness:

    https://wiki.archlinux.org/title/Backlight
    
    https://github.com/polybar/polybar/wiki/Module:-backlight

If problem with unicode in firefox, terminal

    sudo pacman -S noto-fonts-emoji
    sudo pacman -S noto-fonts-cjk

Nvim 
    
    sudo pacman -S nvim

Video player
    
    sudo pacman -S mpv

File manager
    
    sudo pacman -S ranger
