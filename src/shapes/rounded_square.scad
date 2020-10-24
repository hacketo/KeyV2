include <square.scad>
include <../libraries/round-anything/polyround.scad>

module rounded_square_shape(size, delta, progress, center = true) {
  radius = $corner_radius_bottom + ($corner_radius - $corner_radius_bottom) * progress;
  offset(r=radius, $fa=360/$shape_facets){
    square_shape([size.x - radius*2, size.y - radius* 2], delta, progress);
  }
}

// for skin
function skin_rounded_square(size, delta, progress, thickness_difference) =
  polyRound(add_rounding(rectangle_profile(size - (delta * progress)), $corner_radius_bottom + ($corner_radius - $corner_radius_bottom) * progress), $shape_facets/4);
