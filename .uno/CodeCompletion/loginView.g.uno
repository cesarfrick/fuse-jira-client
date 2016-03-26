public partial class loginView: Fuse.Controls.Panel
{
    static loginView()
    {
    }
    public loginView()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new Fuse.Controls.Button();
        var temp1 = new Fuse.Drawing.StaticSolidColor(float4(0.3333333f, 0.3333333f, 0.3333333f, 1f));
        temp.Text = "Login";
        temp.Width = 400f;
        temp.Height = 200f;
        temp.Background = temp1;
        this.Children.Add(temp);
    }
}
