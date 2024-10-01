using Godot;
using System;

public abstract partial class AbstractEnemy : CharacterBody2D
{
	protected AnimatedSprite2D _sprite;

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		// ONREADY members
		_sprite = (AnimatedSprite2D)this.FindChild("sprite");
	}
}