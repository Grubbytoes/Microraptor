using Godot;
using System;

public partial class PlayerShip : CharacterBody2D
{
	private Vector2 InputVector;

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
       	InputVector = Input.GetVector("ui_left", "ui_right", "ui_up", "ui_down");
        Velocity = Velocity.Lerp(InputVector * 125, 0.25f);
		MoveAndSlide();
	}
}
