using Godot;
using System;

public abstract partial class AbstractEnemy : AbstractShip
{
    public AnimatedSprite2D Sprite { get; protected set; }

    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
	{
		base._Ready();

		// ONREADY members
		Sprite = (AnimatedSprite2D)this.FindChild("sprite");
	}
}