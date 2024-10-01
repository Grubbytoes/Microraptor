using Godot;
using System;

public partial class PlayerShip : CharacterBody2D
{
	private Vector2 _inputVector;
	private Sprite2D _sprite;

	private void UpdateFrame()
	{
		if (Velocity.X < 50 && Velocity.X > -50)
		{
			_sprite.Frame = 0;
		}
		else if (_inputVector.X > 0 && Velocity.X > 100)
		{
			_sprite.FlipH = true;
			_sprite.Frame = 1;
		}
		else if (_inputVector.X < 0 && Velocity.X < -100)
		{

			_sprite.Frame = 1;
			_sprite.FlipH = false;
		}
	}

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		_sprite = (Sprite2D)FindChild("sprite");
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
       	_inputVector = Input.GetVector("ui_left", "ui_right", "ui_up", "ui_down");
        Velocity = Velocity.Lerp(_inputVector * 125, 0.25f);
		MoveAndSlide();

		UpdateFrame();
	}
}
