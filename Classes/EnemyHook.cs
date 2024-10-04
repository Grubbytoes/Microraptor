using Godot;
using System;

public partial class EnemyHook : PathFollow2D
{

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
		Progress += (float)(80 * delta);
	}
}
