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
        var temp = new Card();
        var temp1 = new Fuse.Controls.Text();
        var temp2 = new Fuse.Controls.TextInput();
        var temp3 = new Fuse.Controls.TextInput();
        var temp4 = new Fuse.Controls.Button();
        var temp5 = new Fuse.Drawing.StaticSolidColor(float4(0.3333333f, 0.3333333f, 0.3333333f, 1f));
        var temp6 = new Fuse.Drawing.StaticSolidColor(float4(1f, 1f, 1f, 1f));
        this.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Percent);
        this.Margin = float4(20f, 20f, 20f, 20f);
        this.Padding = float4(20f, 20f, 20f, 20f);
        temp.Layer = Fuse.Layer.Background;
        temp.CornerRadius = float4(5f, 5f, 5f, 5f);
        temp.Fill = temp6;
        temp.Children.Add(temp1);
        temp.Children.Add(temp2);
        temp.Children.Add(temp3);
        temp.Children.Add(temp4);
        temp1.Value = "Enter your Email and Password";
        temp1.Height = new Uno.UX.Size(48f, Uno.UX.Unit.Unspecified);
        temp1.Alignment = Fuse.Elements.Alignment.Center;
        temp2.InputHint = Fuse.Controls.TextInputHint.Email;
        temp2.PlaceholderText = "Email";
        temp2.Width = new Uno.UX.Size(80f, Uno.UX.Unit.Percent);
        temp2.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp3.IsPassword = true;
        temp3.PlaceholderText = "Password";
        temp3.Width = new Uno.UX.Size(80f, Uno.UX.Unit.Percent);
        temp3.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp4.Text = "Login";
        temp4.Width = new Uno.UX.Size(80f, Uno.UX.Unit.Percent);
        temp4.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp4.Background = temp5;
        this.Children.Add(temp);
    }
}
