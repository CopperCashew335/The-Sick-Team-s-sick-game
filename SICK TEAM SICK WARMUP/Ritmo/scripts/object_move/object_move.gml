function object_move(xsp, ysp, collision)
{
	var wall = layer_tilemap_get_id("walls")
	var touchingx = collision_rectangle(x, y-sprite_height/3, x+xsp+sprite_width*clamp(xsp, -1, 1)/2, y+sprite_height/3, collision, false, true)
	var touchingy = collision_rectangle(x-sprite_width/3, y, x+sprite_width/3, y+ysp+sprite_height*clamp(ysp, -1, 1)/2, collision, false, true)
	x += xsp
	y += ysp
	return [touchingx, touchingy]
}