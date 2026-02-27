using System;

class Program
{
    static void Main(string[] args)
    {
        int[] numerosPares = { 2, 4, 6, 8, 10 };

        Console.Write("Ingrese un número del 1 al 10: ");
        int numeroBuscado = Convert.ToInt32(Console.ReadLine());

       
        if (numeroBuscado < 1 || numeroBuscado > 10)
        {
            Console.WriteLine("Por favor, ingrese un número válido entre 1 y 10.");
            return;
        }

  
        int resultado = BusquedaBinaria(numerosPares, numeroBuscado);

        if (resultado != -1)
        {
            Console.WriteLine($"El número {numeroBuscado} está en la lista de números pares.");
        }
        else
        {
            Console.WriteLine($"El número {numeroBuscado} NO está en la lista de números pares.");
        }
    }

    static int BusquedaBinaria(int[] arreglo, int numero)
    {
        int izquierda = 0;
        int derecha = arreglo.Length - 1;

        while (izquierda <= derecha)
        {
            int medio = izquierda + (derecha - izquierda) / 2;

            if (arreglo[medio] == numero)
                return medio;
            if (arreglo[medio] < numero)
                izquierda = medio + 1;
            else
                derecha = medio - 1;
        }
        return -1; 
    }
}
