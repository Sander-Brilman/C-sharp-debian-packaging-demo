
while (true)
{
    try {

        System.Console.WriteLine("1st number:");
        int num1 = int.Parse(Console.ReadLine()!);

        System.Console.WriteLine("2d number:");
        int num2 = int.Parse(Console.ReadLine()!);

        System.Console.WriteLine($"\nResult: {num1 + num2}\n\n");

    } catch(Exception e) {
        System.Console.WriteLine(e.Message);
        System.Console.WriteLine();
    }
}