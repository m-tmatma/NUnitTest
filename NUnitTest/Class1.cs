using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;

namespace NUnitTestTest
{
    [TestFixture]
    public class Test
    {
        private Calc calc;

        [SetUp]
        public void SetUp()
        {
            this.calc = new Calc();
        }

        [TearDown]
        public void TearDown()
        {
            this.calc = null;
        }

        [Test]
        public void Test1()
        {
            Assert.That(this.calc.Add(1, 2), Is.EqualTo(3));
        }
    }
}
