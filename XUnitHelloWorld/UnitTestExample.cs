using System;
using System.Net.Http;
using System.Threading.Tasks;
using Xunit;

namespace XUnitHelloWorld
{
    public class UnitTestExample
    {
        [Fact]
        public async Task PassTest()
        {
            using var client = new HttpClient();
            await client.GetAsync("https://www.google.es");
        }
        
        [Fact(Skip = "Test has been skipped")]
        public void SkipTest()
        {
        }
        
        [Fact]
        public async Task FailTest()
        {
            using var client = new HttpClient();
            await client.GetAsync("https://www.badurl.badurl");
        }

        [Theory]
        [InlineData(3, true)]
        [InlineData(5, true)]
        [InlineData(7, true)]
        [InlineData(9, false)]
        public void IsPrimeTest(int value, bool expected)
        {
            Assert.Equal(expected, IsPrime(value));
        }
        
        static bool IsPrime(int number)
        {
            if (number <= 1) return false;
            if (number == 2) return true;
            if (number % 2 == 0) return false;

            var boundary = (int)Math.Floor(Math.Sqrt(number));

            for (int i = 3; i <= boundary; i+=2)
                if (number % i == 0)
                    return false;

            return true;        
        }
    }
}