include <../includes.scad>

/* here's how to use the spacebar([u=6.25], [stab=50mm]) command.
   The first argument is the size of the spacebar in units (default : 6.25), the second optional argument is the size to use for the stabilized part, <3u: 12mm, 3u: 19.04mm, 6.25u: 50mm
   
*/

spacebars = [2.75, 3, 6.25];

for (y=[0:len(spacebars)-1]) {
  translate_u(0,y) {
    spacebar(spacebars[y]) key();
  }
}

// custom 7u
translate_u(0,-1) {
  spacebar(7, 57) key();
}
