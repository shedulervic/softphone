var num = "-call ";
var localpath = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
var phonepath = "Vedisoft\\SoftphonePro\\SoftphonePro.exe";
var app = Path.Combine(localpath, phonepath);
if (File.Exists(app))
{
    Console.WriteLine("Softphone not installed!");
}

    if (args.Length == 1)
    {
        foreach (string s in args)
        {
            num += s;
        }
    }
    else
    {
        Console.WriteLine("wrong number!");
    }


System.Diagnostics.Process.Start(app, num);
