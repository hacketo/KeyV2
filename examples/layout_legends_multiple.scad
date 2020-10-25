include <../includes.scad>

/* 
  here's how to use the multiple legends input for the layout module.
  You can supply the legends with a list of strings
  [ // Row 1
    ["Esc", "F1", "F2", ...]
  ]
  or a list of legends data
  [ // Row 1
    ["Esc", pos=[0,0] , size, align=["center","center"]
  ]
  or mixed ones..
  [ // Row 1
    ["Esc", [-1,-1], 3, ["left", "top"]], "F1", "F2"
  ]
   
   use $font_size and $front_legends_font_size to customize the font size
   use $font_align and $font_front_align to customize the font alignment
   
   $font_align : [halign, valign] , 
   halign ["left", "center", "right"]    
   valign ["bottom", "center", "top"]
*/


layout_sizes = [
  [1,1]
];

layout_legends = [
  [ // 1 Row
      [["!", [-1.0, -0.1], 3],["1", [1.0, -0.1], 3]],
      [["@", [-1.0, -0.1], 3],["2", [1.0, -0.1], 3]],
  ]
];

layout_front_legends = [
  [ // 1 Row
      "F1","F2"
  ]
];

$font_size = 4;

module my_layout_default(profile){
  layout(layout_sizes, "cherry", layout_legends, layout_front_legends) children();
}

my_layout_default("cherry") key();