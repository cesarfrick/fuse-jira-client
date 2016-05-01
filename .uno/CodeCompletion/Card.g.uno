public partial class Card: Fuse.Controls.StackPanel
{
    float4 _field_CornerRadius;
    [global::Uno.UX.UXValueChangedEvent("SetCornerRadius", "CornerRadiusChanged")]
    public float4 CornerRadius
    {
        get { return _field_CornerRadius; }
        set { SetCornerRadius(value, null); }
    }
    public event global::Uno.UX.ValueChangedHandler<float4> CornerRadiusChanged;
    public void SetCornerRadius(float4 value, object origin)
    {
        if (value != _field_CornerRadius)
        {
            _field_CornerRadius = value;
            var args = new global::Uno.UX.ValueChangedArgs<float4>(value, origin);
            if (CornerRadiusChanged != null) CornerRadiusChanged(this, args);
        }
    }
    Fuse.Drawing.Brush _field_Fill;
    [global::Uno.UX.UXValueChangedEvent("SetFill", "FillChanged")]
    public Fuse.Drawing.Brush Fill
    {
        get { return _field_Fill; }
        set { SetFill(value, null); }
    }
    public event global::Uno.UX.ValueChangedHandler<Fuse.Drawing.Brush> FillChanged;
    public void SetFill(Fuse.Drawing.Brush value, object origin)
    {
        if (value != _field_Fill)
        {
            _field_Fill = value;
            var args = new global::Uno.UX.ValueChangedArgs<Fuse.Drawing.Brush>(value, origin);
            if (FillChanged != null) FillChanged(this, args);
        }
    }
    jiraclient_FuseControlsRectangle_CornerRadius_Property temp_CornerRadius_inst;
    jiraclient_Card_CornerRadius_Property this_CornerRadius_inst;
    jiraclient_FuseControlsRectangle_Fill_Property temp_Fill_inst;
    jiraclient_Card_Fill_Property this_Fill_inst;
    static Card()
    {
    }
    public Card()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new Fuse.Controls.Rectangle();
        temp_CornerRadius_inst = new jiraclient_FuseControlsRectangle_CornerRadius_Property(temp);
        this_CornerRadius_inst = new jiraclient_Card_CornerRadius_Property(this);
        temp_Fill_inst = new jiraclient_FuseControlsRectangle_Fill_Property(temp);
        this_Fill_inst = new jiraclient_Card_Fill_Property(this);
        var temp1 = new Fuse.Controls.PropertyBinding<float4>(temp_CornerRadius_inst, this_CornerRadius_inst);
        var temp2 = new Fuse.Controls.PropertyBinding<Fuse.Drawing.Brush>(temp_Fill_inst, this_Fill_inst);
        this.Padding = float4(20f, 20f, 20f, 20f);
        temp.Layer = Fuse.Layer.Background;
        temp.Behaviors.Add(temp1);
        temp.Behaviors.Add(temp2);
        this.Children.Add(temp);
    }
}
