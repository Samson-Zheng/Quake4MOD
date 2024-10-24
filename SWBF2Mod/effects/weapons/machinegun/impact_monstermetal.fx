effect effects/weapons/machinegun/impact_monstermetal
{
	size	269

	sound "sound"
	{
		soundShader	"bullet_impact_metal"
	}
	spawner "blood"
	{
		detail		0.5
		count		4,4

		sprite
		{
			duration	1,1.5
			material	"gfx/effects/gore_spray/bloodhit3"
			gravity		0.05,0.05

			start
			{
				position { line 0,0,0,10,0,0 linearSpacing }
				velocity { box 10,0,0,80,0,0 }
				size { line 1,3,2,4 }
				tint { line 0.247059,0.0313726,0.0313726,0.156863,0,0 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
			}

			end
			{
				size { line 20,20,40,40 }
				fade { line 1,0.5 }
			}
		}
	}
	spawner "blood2"
	{
		count		3,3

		sprite
		{
			duration	1,1.5
			material	"gfx/effects/gore_spray/bloodhit4"
			gravity		0.2,0.2

			start
			{
				position { line 0,0,0,10,0,0 linearSpacing }
				velocity { box 10,0,50,30,0,50 }
				size { line 1,3,2,4 }
				tint { line 0.247059,0.0313726,0.0313726,0.156863,0,0 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 40,40,80,80 }
				fade { line 1,0.5 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "blood_streaks"
	{
		count		4,6
		locked

		line
		{
			duration	0.15,0.25
			generatedLine
			material	"gfx/effects/gore_spray/bloodline1"
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder -0.2,-0.3,-0.3,-0.2,0.3,0.3 surface }
				velocity { point 1,0,0 }
				size { box 6,8 }
				tint { point 0.27451,0.0392157,0.0392157 }
				length { box 10,0,0,15,0,0 }
			}

			motion
			{
				fade { envelope "linear" }
				length { envelope "linear" }
			}

			end
			{
				length { box 30,0,0,35,0,0 }
			}

			impact
			{
				bounce	0.2
			}
		}
	}
	spawner "blood_rear"
	{
		count		3,3

		sprite
		{
			duration	1,1.5
			material	"gfx/effects/gore_spray/bloodhit3"
			gravity		0.2,0.2
			flipNormal

			start
			{
				position { line 0,0,0,10,0,0 linearSpacing }
				velocity { box 20,0,50,100,0,50 }
				size { line 1,3,2,4 }
				tint { line 0.247059,0.0313726,0.0313726,0.156863,0,0 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 40,40,80,80 }
				fade { line 1,0.5 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	spawner "side_streaks"
	{
		count		5,7
		locked

		line
		{
			duration	0.16,0.16
			blend	add
			generatedLine
			material	"gfx/effects/energy_sparks/spark_line2"
			generatedOriginNormal
			flipNormal

			start
			{
				position { cylinder -0.2,-0.3,-0.3,-0.2,0.3,0.3 surface }
				velocity { point 1,0,0 }
				size { box 0.5,1 }
				tint { line 1,0.921569,0.701961,0.74902,0.521569,0.203922 }
				length { point 1,0,0 }
			}

			motion
			{
				tint { envelope "linear" }
				fade { envelope "exp_x2" }
				length { envelope "linear" }
			}

			end
			{
				tint { line 0.956863,0.658824,0.529412,0.956863,0.639216,0.529412 }
				length { box 4,0,0,8,0,0 }
			}

			impact
			{
				bounce	0.2
			}
		}
	}
	spawner "flash"
	{
		detail		0.5
		count		1,1

		sprite
		{
			duration	0.1,0.1
			blend	add
			material	"gfx/effects/weapons/flash"
			generatedNormal

			start
			{
				position { point 1,0,0 }
				size { point 6,6 }
			}

			motion
			{
				tint { envelope "linear" }
			}
		}
	}
	spawner "sparks_trails"
	{
		detail		0.5
		count		3,5

		sprite
		{
			duration	0.2,0.4
			material	"gfx/effects/particles_shapes/blank"
			gravity		0.5,1
			trailType	motion
			trailTime	0.1,0.1
			trailCount	3,3

			start
			{
				velocity { box 50,-150,-150,300,150,150 }
				size { box 1,1,2,2 }
				tint { point 0.913726,0.858824,0.729412 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
			}

			end
			{
				size { point 0.5,0.5 }
				tint { line 0.929412,0.796079,0.321569,0.909804,0.501961,0.364706 }
			}
		}
	}
	spawner "guts1"
	{
		detail		0.5
		count		4,5

		sprite
		{
			duration	1,1.5
			material	"gfx/effects/gore_spray/bloodhit5"
			gravity		0.4,0.4

			start
			{
				position { line 0,0,0,10,0,0 linearSpacing }
				velocity { box 20,-80,-20,100,80,80 }
				size { line 1,1,2,2 }
				tint { point 0.917647,0.341176,0.341176 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fast_in_slow_out" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 2,2,12,12 }
				fade { line 1,0.5 }
				rotate { box -0.5,0.5 relative }
			}
		}
	}
	spawner "guts2"
	{
		detail		0.5
		count		2,3

		sprite
		{
			duration	1,1.5
			material	"gfx/effects/gore_spray/bloodhit6"
			gravity		0.4,0.4

			start
			{
				position { line 0,0,0,10,0,0 linearSpacing }
				velocity { box 20,-80,-20,100,80,80 }
				size { line 1,1,2,2 }
				tint { point 0.933333,0.435294,0.435294 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fast_in_slow_out" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 2,2,12,12 }
				fade { line 1,0.5 }
				rotate { box -0.5,0.5 relative }
			}
		}
	}
}










