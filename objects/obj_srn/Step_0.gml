var vel = new __Srn_Vec2(
    Input.is_down("right") - Input.is_down("left"),
    Input.is_down("down")  - Input.is_down("up")
).normalize().scale(10);

velh = vel.x;
velv = vel.y;

x += velh;
y += velv;
