
include <../includes.scad>

// Enable bumps on home keys
$cherry_home_bumps = true;
// Setup bumps
$key_bump_depth = 0.05;
$key_bump_edge = 1;
$key_bump_width = 3;
$key_bump_radius = 0.3;

// Enable custom dish on home keys
$cherry_home_dish = 1.25;
  
60_percent_default("cherry") key();