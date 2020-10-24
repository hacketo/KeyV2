include <../includes.scad>

/* here's how to use the spacebar() command.
   The first argument is the size of the spacebar, the second optional argument is the size to use for the stabilized part.
*/

spacebars = [3, 6.25];

for (x=[0:len(spacebars)-1]) {
  translate_u(0,x) {
    spacebar(spacebars[x]) key();
  }
}
