module keybump(depth = 0, edge_inset=0.4) {
  radius = $key_bump_radius;
  translate([0, -top_total_key_height()/2 + edge_inset, depth]){
        rotate([90,0,90]) cylinder($key_bump_width, radius, radius, true);
        translate([0,0,-radius]) cube([$key_bump_width, radius*2, radius*2], true);
  }
}
