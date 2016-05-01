sealed class jiraclient_FuseControlsRectangle_CornerRadius_Property: Uno.UX.Property<float4>
{
    Fuse.Controls.Rectangle _obj;
    public jiraclient_FuseControlsRectangle_CornerRadius_Property(Fuse.Controls.Rectangle obj) { _obj = obj;  }
    protected override float4 OnGet() { return _obj.CornerRadius; }
    protected override void OnSet(float4 v, object origin) { _obj.CornerRadius = v; }
}
sealed class jiraclient_FuseControlsRectangle_Fill_Property: Uno.UX.Property<Fuse.Drawing.Brush>
{
    Fuse.Controls.Rectangle _obj;
    public jiraclient_FuseControlsRectangle_Fill_Property(Fuse.Controls.Rectangle obj) { _obj = obj;  }
    protected override Fuse.Drawing.Brush OnGet() { return _obj.Fill; }
    protected override void OnSet(Fuse.Drawing.Brush v, object origin) { _obj.Fill = v; }
}
sealed class jiraclient_Card_CornerRadius_Property: Uno.UX.Property<float4>
{
    Card _obj;
    public jiraclient_Card_CornerRadius_Property(Card obj) { _obj = obj; obj.CornerRadiusChanged += this.OnValueChanged; }
    protected override float4 OnGet() { return _obj.CornerRadius; }
    protected override void OnSet(float4 v, object origin) { _obj.SetCornerRadius(v, origin); }
    protected override void OnAddListener(Uno.UX.ValueChangedHandler<float4> listener) { _obj.CornerRadiusChanged += listener; }
    protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<float4> listener) { _obj.CornerRadiusChanged -= listener; }
}
sealed class jiraclient_Card_Fill_Property: Uno.UX.Property<Fuse.Drawing.Brush>
{
    Card _obj;
    public jiraclient_Card_Fill_Property(Card obj) { _obj = obj; obj.FillChanged += this.OnValueChanged; }
    protected override Fuse.Drawing.Brush OnGet() { return _obj.Fill; }
    protected override void OnSet(Fuse.Drawing.Brush v, object origin) { _obj.SetFill(v, origin); }
    protected override void OnAddListener(Uno.UX.ValueChangedHandler<Fuse.Drawing.Brush> listener) { _obj.FillChanged += listener; }
    protected override void OnRemoveListener(Uno.UX.ValueChangedHandler<Fuse.Drawing.Brush> listener) { _obj.FillChanged -= listener; }
}
