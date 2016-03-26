public partial class Login: Fuse.Controls.StackPanel
{
    static Login()
    {
    }
    public Login()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new Fuse.Controls.Rectangle();
        var temp1 = new Fuse.Drawing.StaticSolidColor(float4(1f, 1f, 1f, 1f));
        var temp2 = new Fuse.Controls.Text();
        var temp3 = new Fuse.Controls.TextInput();
        var temp4 = new Fuse.Controls.TextInput();
        var temp5 = new Fuse.Controls.Button();
        var temp6 = new Fuse.Drawing.StaticSolidColor(float4(0.3333333f, 0.3333333f, 0.3333333f, 1f));
        this.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Percent);
        this.Margin = float4(20f, 20f, 20f, 20f);
        this.Padding = float4(20f, 20f, 20f, 20f);
        temp.CornerRadius = float4(5f, 5f, 5f, 5f);
        temp.Layer = Fuse.Layer.Background;
        temp.Fill = temp1;
        temp2.Value = "Enter your Email and Password";
        temp2.Height = new Uno.UX.Size(48f, Uno.UX.Unit.Unspecified);
        temp2.Alignment = Fuse.Elements.Alignment.Center;
        temp3.InputHint = Fuse.Controls.TextInputHint.Email;
        temp3.PlaceholderText = "Email";
        temp3.Width = new Uno.UX.Size(80f, Uno.UX.Unit.Percent);
        temp3.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp4.IsPassword = true;
        temp4.PlaceholderText = "Password";
        temp4.Width = new Uno.UX.Size(80f, Uno.UX.Unit.Percent);
        temp4.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp5.Text = "Login";
        temp5.Width = new Uno.UX.Size(80f, Uno.UX.Unit.Percent);
        temp5.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp5.Background = temp6;
        this.Children.Add(temp);
        this.Children.Add(temp2);
        this.Children.Add(temp3);
        this.Children.Add(temp4);
        this.Children.Add(temp5);
    }
}
