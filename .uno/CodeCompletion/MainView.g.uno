public partial class MainView: Fuse.App
{
    static MainView()
    {
    }
    public MainView()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp = new Fuse.Controls.Page();
        var temp1 = new Login();
        var temp2 = new Fuse.Drawing.StaticSolidColor(float4(0.2f, 0.2f, 0.2f, 1f));
        temp.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        temp.Height = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
        temp.Background = temp2;
        temp.Children.Add(temp1);
        this.RootNode = temp;
        this.Theme = Fuse.BasicTheme.BasicTheme.Singleton;
    }
}
