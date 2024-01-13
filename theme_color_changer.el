;;; color_changer --- theme
;;; Commentary:
;;; Code:

(load-file "~/.emacs.d/theme_variables.el")

(setq colors-list '(("red" "dark red" "brown" "firebrick" "indian red" "light coral" "salmon" "light salmon" "tomato" "coral" "dark salmon" "rosy brown" "sienna" "saddle brown" "chocolate" "peru" "sandy brown" "burlywood" "tan" "navajo white" "wheat" "red4" "red3" "red2" "red1" "brown4" "brown3" "brown2" "brown1" "firebrick4" "firebrick3" "firebrick2" "firebrick1" "IndianRed4" "IndianRed3" "IndianRed2" "IndianRed1" "tomato4" "tomato3" "tomato2" "tomato1" "coral4" "coral3" "coral2" "coral1" "salmon4" "salmon3" "salmon2" "salmon1" "LightSalmon4" "LightSalmon3" "LightSalmon2" "LightSalmon1" "sienna4" "sienna3" "sienna2" "sienna1") ("orange" "orange red" "dark orange" "OrangeRed4" "OrangeRed3" "OrangeRed2" "OrangeRed1" "DarkOrange4" "DarkOrange3" "DarkOrange2" "DarkOrange1" "orange4" "orange3" "orange2" "orange1" "chocolate4" "chocolate3" "chocolate2" "chocolate1" "tan4" "tan3" "tan2" "tan1") ("yellow" "gold" "dark goldenrod" "goldenrod" "light goldenrod" "pale goldenrod" "cornsilk" "dark khaki" "khaki" "lemon chiffon" "gold4" "gold3" "gold2" "gold1" "yellow4" "yellow3" "yellow2" "yellow1" "DarkGoldenrod4" "DarkGoldenrod3" "DarkGoldenrod2" "DarkGoldenrod1" "goldenrod4" "goldenrod3" "goldenrod2" "goldenrod1" "cornsilk4" "cornsilk3" "cornsilk2" "cornsilk1" "LightGoldenrod4" "LightGoldenrod3" "LightGoldenrod2" "LightGoldenrod1" "LemonChiffon4" "LemonChiffon3" "LemonChiffon2" "LemonChiffon1" "khaki4" "khaki3" "khaki2" "khaki1" "LightYellow4" "LightYellow3" "LightYellow2" "LightYellow1" "ivory4" "ivory3" "ivory2" "ivory1") ("green" "chartreuse" "lawn green" "spring green" "medium spring green" "dark olive green" "olive drab" "yellow green" "green yellow" "light green" "forest green" "dark green" "lime green" "pale green" "dark sea green" "sea green" "medium sea green" "chartreuse4" "chartreuse3" "chartreuse2" "chartreuse1" "green4" "green3" "green2" "green1" "SpringGreen4" "SpringGreen3" "SpringGreen2" "SpringGreen1" "OliveDrab4" "OliveDrab3" "OliveDrab2" "OliveDrab1" "DarkOliveGreen4" "DarkOliveGreen3" "DarkOliveGreen2" "DarkOliveGreen1" "PaleGreen4" "PaleGreen3" "PaleGreen2" "PaleGreen1" "DarkSeaGreen4" "DarkSeaGreen3" "DarkSeaGreen2" "DarkSeaGreen1" "honeydew4" "honeydew3" "honeydew2" "honeydew1" "SeaGreen4" "SeaGreen3" "SeaGreen2" "SeaGreen1") ("blue" "cyan" "deep sky blue" "medium blue" "light sea green" "medium aquamarine" "aquamarine" "dark cyan" "dark turquoise" "medium turquoise" "turquoise" "pale turquoise" "powder blue" "light blue" "sky blue" "light sky blue" "cadet blue" "steel blue" "dark slate gray" "slate gray" "light slate gray" "royal blue" "dodger blue" "cornflower blue" "light steel blue" "dark blue" "navy" "midnight blue" "cyan4" "cyan3" "cyan2" "cyan1" "turquoise4" "turquoise3" "turquoise2" "turquoise1" "DeepSkyBlue4" "DeepSkyBlue3" "DeepSkyBlue2" "DeepSkyBlue1" "blue4" "blue3" "blue2" "blue1" "aquamarine4" "aquamarine3" "aquamarine2" "aquamarine1" "DarkSlateGray4" "DarkSlateGray3" "DarkSlateGray2" "DarkSlateGray1" "PaleTurquoise4" "PaleTurquoise3" "PaleTurquoise2" "PaleTurquoise1" "LightCyan4" "LightCyan3" "LightCyan2" "LightCyan1" "azure4" "azure3" "azure2" "azure1" "CadetBlue4" "CadetBlue3" "CadetBlue2" "CadetBlue1" "LightBlue4" "LightBlue3" "LightBlue2" "LightBlue1" "LightSkyBlue4" "LightSkyBlue3" "LightSkyBlue2" "LightSkyBlue1" "SkyBlue4" "SkyBlue3" "SkyBlue2" "SkyBlue1" "SteelBlue4" "SteelBlue3" "SteelBlue2" "SteelBlue1" "DodgerBlue4" "DodgerBlue3" "DodgerBlue2" "DodgerBlue1" "SlateGray4" "SlateGray3" "SlateGray2" "SlateGray1" "LightSteelBlue4" "LightSteelBlue3" "LightSteelBlue2" "LightSteelBlue1" "RoyalBlue4" "RoyalBlue3" "RoyalBlue2" "RoyalBlue1" "SlateBlue4" "SlateBlue3" "SlateBlue2" "SlateBlue1") ("magenta" "dark violet" "dark magenta" "dark slate blue" "slate blue" "medium slate blue" "light slate blue" "medium purple" "blue violet" "purple" "dark orchid" "medium orchid" "orchid" "thistle" "plum" "violet" "medium violet red" "violet red" "pale violet red" "maroon" "deep pink" "hot pink" "pink" "light pink" "magenta4" "magenta3" "magenta2" "magenta1" "RosyBrown4" "RosyBrown3" "RosyBrown2" "RosyBrown1" "MediumPurple4" "MediumPurple3" "MediumPurple2" "MediumPurple1" "purple4" "purple3" "purple2" "purple1" "DarkOrchid4" "DarkOrchid3" "DarkOrchid2" "DarkOrchid1" "MediumOrchid4" "MediumOrchid3" "MediumOrchid2" "MediumOrchid1" "thistle4" "thistle3" "thistle2" "thistle1" "plum4" "plum3" "plum2" "plum1" "orchid4" "orchid3" "orchid2" "orchid1" "maroon4" "maroon3" "maroon2" "maroon1" "DeepPink4" "DeepPink3" "DeepPink2" "DeepPink1" "HotPink4" "HotPink3" "HotPink2" "HotPink1" "VioletRed4" "VioletRed3" "VioletRed2" "VioletRed1" "LavenderBlush4" "LavenderBlush3" "LavenderBlush2" "LavenderBlush1" "PaleVioletRed4" "PaleVioletRed3" "PaleVioletRed2" "PaleVioletRed1" "pink4" "pink3" "pink2" "pink1" "LightPink4" "LightPink3" "LightPink2" "LightPink1") ("snow" "misty rose" "seashell" "peach puff" "linen" "antique white" "bisque" "papaya whip" "moccasin" "blanched almond" "old lace" "floral white" "beige" "light yellow" "light goldenrod yellow" "ivory" "honeydew" "mint cream" "light cyan" "azure" "alice blue" "lavender" "ghost white" "lavender blush" "snow4" "snow3" "snow2" "snow1" "MistyRose4" "MistyRose3" "MistyRose2" "MistyRose1" "seashell4" "seashell3" "seashell2" "seashell1" "PeachPuff4" "PeachPuff3" "PeachPuff2" "PeachPuff1" "bisque4" "bisque3" "bisque2" "bisque1" "AntiqueWhite4" "AntiqueWhite3" "AntiqueWhite2" "AntiqueWhite1" "burlywood4" "burlywood3" "burlywood2" "burlywood1" "NavajoWhite4" "NavajoWhite3" "NavajoWhite2" "NavajoWhite1" "wheat4" "wheat3" "wheat2" "wheat1")))
(setq color-background "none")              ;
(setq color-background-low "none")          ;
(setq color-background-lower "none")        ;
(setq color-background-lowest "none")       ;
(setq color-background-saturated "none")    ;
(setq color-constant "none")                ;constant
(setq color-function "none")                ;function
(setq color-highlight-1 "none")             ;highlight-1
(setq color-keyword "none")                 ;keyword
(setq color-low "none")                     ;low
(setq color-lower "none")                   ;lower
(setq color-preprocessor "none")            ;preprocessor
(setq color-text "none")                    ;text
(setq color-type "none")                    ;type 
(setq color-variable "none")                ;variable

(defun my:color-lightness (color)
  "Calculate the lightness of a color in the form '#RRGGBB'."
  (let* ((rgb-values (color-values color))
         (r (/ (car rgb-values) 255.0))
         (g (/ (cadr rgb-values) 255.0))
         (b (/ (caddr rgb-values) 255.0))
         (luminance (+ (* 0.2126 r) (* 0.7152 g) (* 0.0722 b))))
    luminance))

(defun my:get-random-element (list-of-lists)
  "Get a random element from a list of lists."
  (let* ((random-sublist (nth (random (length list-of-lists)) list-of-lists))
         (random-index (random (length random-sublist))))
    (setq color-type (elt random-sublist 0))
    (elt random-sublist random-index)))

(message "test")
(message "test2 %s" (prin1-to-string (color-name-to-rgb (my:get-random-element colors-list))))

(defun my:background-color ()
  (if (eq INDEX-CHIAROSCURO INDEX-COLOR-CHANGE-DARK)
      (progn (message "dark"))
    (progn (message "light")))
  (setq color-background (my:get-random-element colors-list)))

(defun my:background-color-depending-on-dark-light ()
  (setq color-text (color-complement-hex color-background))
  (setq color-background (color-desaturate-name color-background 60)))

(defun my:other-background-colors ()
  (setq color-background-low (color-darken-name color-background 20))
  (setq color-background-lower (color-darken-name color-background 21))
  (setq color-background-lowest (color-darken-name color-background 22))
  (setq color-background-saturated (color-saturate-name color-background 100)))

(defun my:complementary-text-colors ())
(defun my:font-lock-colors ())
(defun my:print-colors ())

(defun my:print-log ()
  (message "Color type: %s" color-type)
  (message "Color background: %s" color-background))

(my:background-color)
(my:background-color-depending-on-dark-light)
(my:other-background-colors)
(my:complementary-text-colors)
(my:font-lock-colors)
(my:print-colors)
(my:print-log)

(setq background color-background)
(setq background-fringe color-background-low)
(setq background-hl color-background-low)
(setq background-magit color-background-lower)
(setq background-magit-dark color-background-lowest)
(setq background-match color-background-saturated)
(setq background-mode-line color-background-low)
(setq background-mode-line-active color-background-low)
(setq background-region color-background-low)

(setq text-constant "#000000")
(setq text-error "#000000")
(setq text-function "#000000")
(setq text-highlight-1 "#000000")
(setq text-highlight-2 "#000000")
(setq text-keyword "#000000")
(setq text-low "#000000")
(setq text-lower "#000000")
(setq text-match "#000000")
(setq text-mode-line "#000000")
(setq text-mode-line-buffer "#000000")
(setq text-normal color-text)
(setq text-preprocessor "#000000")
(setq text-type "#000000")
(setq text-variable "#000000")
(setq text-warning "#000000")

;;; theme_color_changer.el ends here
