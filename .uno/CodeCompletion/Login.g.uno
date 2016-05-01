public partial class Login: Fuse.Controls.StackPanel
{
    internal Fuse.Reactive.EventBinding temp_eb0;
    global::Uno.UX.NameTable __g_nametable;
    static global::Uno.UX.NameTableEntry[] __g_static_nametable = new global::Uno.UX.NameTableEntry[] {
    };
    static Login()
    {
    }
    public Login()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new Card();
        var temp1 = new Fuse.Reactive.JavaScript(__g_nametable);
        var temp2 = new Fuse.Controls.Text();
        var temp3 = new Fuse.Controls.TextInput();
        var temp4 = new Fuse.Controls.TextInput();
        var temp5 = new Fuse.Controls.Button();
        var temp6 = new Fuse.Drawing.StaticSolidColor(float4(0.3333333f, 0.3333333f, 0.3333333f, 1f));
        temp_eb0 = new Fuse.Reactive.EventBinding("buttonClick");
        var temp7 = new Fuse.Drawing.StaticSolidColor(float4(1f, 1f, 1f, 1f));
        this.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Percent);
        this.Margin = float4(20f, 20f, 20f, 20f);
        this.Padding = float4(20f, 20f, 20f, 20f);
        temp.Layer = Fuse.Layer.Background;
        temp.CornerRadius = float4(5f, 5f, 5f, 5f);
        temp.Fill = temp7;
        temp.Children.Add(temp2);
        temp.Children.Add(temp3);
        temp.Children.Add(temp4);
        temp.Children.Add(temp5);
        temp.Behaviors.Add(temp1);
        temp1.Code = "module.exports = {\n                buttonClick: function (args) { console.log(\"Button was clicked\"); }\n            }";
        temp1.LineNumber = 4;
        temp1.FileName = "views/Login.ux";
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
        global::Fuse.Gestures.Clicked.AddHandler(temp5, temp_eb0.OnEvent);
        temp5.Background = temp6;
        temp5.Behaviors.Add(temp_eb0);
        this.Children.Add(temp);
    }
}
