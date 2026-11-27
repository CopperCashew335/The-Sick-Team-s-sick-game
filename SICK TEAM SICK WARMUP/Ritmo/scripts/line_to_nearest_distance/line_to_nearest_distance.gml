function line_to_nearest_distance(x1, y1, x2, y2, object)
{
	var time = 0
	var ans = []
	repeat ceil(abs(x1-x2))+1
	{
		if collision_line(x1+clamp(x2-x1, -1, 1)*time, y1-sprite_height/3, x1+clamp(x2-x1, -1, 1)*time, y1+sprite_height/3, object, false, true)
		{
			ans = [x1+time*clamp(x2-x1, -1, 1)]
			break
		}
		time += 1
		if time == ceil(abs(x1-x2))+1
		ans = [x]
	}
	time = 0
	repeat ceil(abs(y1-y2))+1
	{
		if collision_line(x1-sprite_width/3, y1+clamp(y2-y1, -1, 1)*time, x1+sprite_width/3, y1+clamp(y2-y1, -1, 1)*time, object, false, true)
		{
			array_insert(ans, 1, y1+time*clamp(y2-y1, -1, 1))
			break
		}
		time += 1
		if time == ceil(abs(y1-y2))+1
		array_insert(ans, 1, y)
	}
	return ans
}