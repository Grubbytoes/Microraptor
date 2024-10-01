extends ParallaxBackground

var xoffset: float;

func _ready():
	xoffset = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scroll_base_offset.y += 400 * delta

	# xoffset sin maths bullshit idk
	if xoffset > 360:
		xoffset = 0

	xoffset = ((15 * delta) + xoffset)
	var thing = (cos(deg_to_rad(xoffset))) * 150
	scroll_base_offset.x = thing
