{ pkgs, ... }:

{  
  fonts = {
    fontDir.enable = true;
    fonts = with pkgs; [
      fantasque-sans-mono
      fira-code
      fira-mono 
      iosevka
      powerline-fonts
      terminus-nerdfont
      (nerdfonts.override { fonts = [ "Agave" "Iosevka" "FiraCode" "JetBrainsMono" ]; })
    ];
  };
}
