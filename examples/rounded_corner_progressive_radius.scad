include <../includes.scad>

/* here's how to use the progressive radius feature

  $corner_radius : setup a base corner radius to use for the keys
  $corner_radius_bottom : use a different corner_radius fo the bottom part of the keycap

  It'll apply a linear fn to the radius based on the progress

*/

$corner_radius = 2;
$corner_radius_bottom = 0;

key();
