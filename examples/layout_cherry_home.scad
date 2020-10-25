include <../includes.scad>

/*
  here's how to enable the cherry bump feature for the layout module
  It'll add a bump / dish on the home keys based on their column index
  
  $cherry_home_bumps - Enable bumps on home keys
  $cherry_home_dish - Set a custom dish on home key
*/

// Enable custom dish on home keys
$cherry_home_dish = 1.25;

// Enable bumps on home keys
$cherry_home_bumps = true;

// Setup bumps
$key_bump_depth = 0.05;
$key_bump_edge = 1;
$key_bump_width = 3;
$key_bump_radius = 0.3;

60_percent_default("cherry") key();
