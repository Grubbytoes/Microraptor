using Godot;

public abstract partial class AbstractShip : CharacterBody2D
{
    public CollisionShape2D Collision { get; private set; }
    public Area2D Hitbox { get; private set; }

    public override void _Ready()
    {
        base._Ready();

        // Assign hitbox and collision
        Hitbox = (Area2D)FindChild("hitbox");
        Collision = (CollisionShape2D)FindChild("collision");

        // Checking okay
        if (Hitbox is null)
        {
            GD.PushWarning(Name + " WARNING: Expected child node called 'hitbox'");
        }
        if (Collision is null)
        {
            GD.PushWarning(Name + " WARNING: Expected child node called 'collision'");
        }
    }
}