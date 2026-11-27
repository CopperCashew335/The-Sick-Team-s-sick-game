var segno = 0
var divis = 1
if keyboard_check(ord("A"))
segno = -1
else if keyboard_check(ord("D"))
segno = 1
if not (clamp(xsp, -0.1, 0.1) == clamp(segno, -0.1, 0.1))
{
	divis = acc_div
	segno -= 1*clamp(xsp, -1, 1)
}
xsp = (xsp+segno*acc)/divis

if keyboard_check(ord("W")) and canjump
{
	ysp -= jump_force
	canjump = 0
}
else
ysp += grav
touching = object_move(xsp, ysp, walls)
xsp = clamp(xsp, -20, 20)
if touching[0] or touching[1]
{
	var shortvarx = sprite_width*clamp(xsp, -0.5, 0.5)
	var shortvary = sprite_height*clamp(ysp, -0.5, 0.5)
	var dist = line_to_nearest_distance(x-xsp, y-ysp, x+shortvarx, y+shortvary, walls)
	if touching[0]
	x = dist[0]-shortvarx
	if touching[1]
	y = dist[1]-shortvary
}
if touching[0]
{
	xsp = 0
}
if touching[1]
{
	if ysp > 0
	canjump = 1
	ysp = 0
}