using Godot;
using System;

public partial class Shootfly : CharacterBody2D
{
	private AnimatedSprite2D _sprite;

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		// ONREADY members
		_sprite = (AnimatedSprite2D)this.FindChild("sprite");

        // Setup
        _sprite.Play("default");
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
}
