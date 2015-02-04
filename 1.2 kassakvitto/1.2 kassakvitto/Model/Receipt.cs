using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1._2_kassakvitto
{
    public class Receipt
    {
        private double _subtotal;

        public Receipt(double subtotal)
        {
            Subtotal = subtotal;
            Calculate(Subtotal);

        }

        public double DiscountRate
        {
            get; private set;
        }

        public double MoneyOff
        {
            get; private set;
        }

        public double Subtotal
        {
            get { return _subtotal; }
            private set
            {
                if (value < 1)
                {
                    throw new ArgumentOutOfRangeException("Måste vara mer än noll!");
                }
                _subtotal = value;
            }
        }

        public double Total
        {
            get; private set;
        }

        public void Calculate(double subtotal)
        {
            if (subtotal <= 499)
            {
                DiscountRate = 0;
            }
            else if (subtotal >= 500 || subtotal <= 999)
            {
                DiscountRate = 0.05;
            }
            else if (subtotal >= 1000 || subtotal <= 4999)
            {
                DiscountRate = 0.1;
            }
            else
            {
                DiscountRate = 0.15;
            }

            MoneyOff = subtotal * DiscountRate;

            Total = subtotal - MoneyOff;
        }


    }
}