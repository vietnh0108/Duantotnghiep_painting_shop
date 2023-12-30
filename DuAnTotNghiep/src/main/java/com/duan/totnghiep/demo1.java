package com.duan.totnghiep;

import java.util.Scanner;

import org.springframework.boot.SpringApplication;

public class demo1 {
	public static void main(String[] args) {
		// Activity 1
		Scanner scanner = new Scanner(System.in);

		System.out.print("Enter a positive integer: ");
		int number = scanner.nextInt();; // Số cần kiểm tra
		//Số nguyên tố là số chỉ chia hết cho chính nó

        boolean isPrime = true;

        if (number <= 1) {
            isPrime = false;
        } else {
            for (int i = 2; i <= Math.sqrt(number); i++) {
                if (number % i == 0) {
                    isPrime = false;
                    break;
                }
            }
        }

        if (isPrime) {
            System.out.println(number + " It is a prime number. ");
        } else {
            System.out.println(number + " It is not a prime number");
        }

		// Activity 2

        System.out.print("How much money? ");
        double initialAmount = scanner.nextDouble();

        System.out.print("How many years do you want to deposit your money? ");
        int years = scanner.nextInt();

        System.out.print("What's the interest rate (%)? ");
        double interestRate = scanner.nextDouble();

        // Tính số tiền sau y năm với công thức
        double finalAmount = initialAmount * Math.pow((1 + interestRate / 100), years);

        System.out.printf("After %d years, you'll receive %.2f\n", years, finalAmount);

		// Activity 3
        System.out.print("Enter a number: ");
        int number3 = scanner.nextInt();

        int originalNumber = number3;
        int reversedNumber = 0;

        while (number3 > 0) {
            int remainder = number3 % 10;
            reversedNumber = reversedNumber * 10 + remainder;
            number3 /= 10;
        }

        if (originalNumber == reversedNumber) {
            System.out.println(originalNumber + " is a palindrome.");
        } else {
            System.out.println(originalNumber + " is not a palindrome.");
        }

		// Activity 4
        System.out.print("Nhập một số nguyên: ");
        int number6 = scanner.nextInt();

        int factorial = 1;

        if (number6 < 0) {
            System.out.println("Không thể tính giai thừa của số âm.");
        } else {
            for (int i = 1; i <= number6; i++) {
                factorial *= i;
            }
            System.out.println("Giai thừa của " + number6 + " là: " + factorial);
        }
		// Activity 5
		System.out.print("Nhập số lượng số Fibonacci cần in: ");
		int n = scanner.nextInt();

		int previous1 = 0;
		int previous2 = 1;
		int fibonacci;

		System.out.print("Dãy Fibonacci: " + previous1 + " " + previous2 + " ");

		for (int i = 3; i <= n; i++) {
			fibonacci = previous1 + previous2;
			System.out.print(fibonacci + " ");

			previous1 = previous2;
			previous2 = fibonacci;
		}

		// Activity 6
		System.out.println("Các số Armstrong từ 100 đến 999:");

		for (int i = 100; i <= 999; i++) {
			int originalNum = i;
			int result = 0;
		
			
			while (i > 0) {
				int remainder = i % 10;
				result += Math.pow(remainder, 3);
				i /= 10;
			}

			if (originalNum == result) {
				System.out.println(originalNum);
			}

			i = originalNum; // Đặt lại giá trị của i để duyệt qua số tiếp theo
		}
		
		//Activity 7
		System.out.print("Nhập một số nguyên: ");
        int number7 = scanner.nextInt();

        if (number7 < 0) {
        	number7 *= -1; // Nếu số âm, chuyển về số dương
        }

        int count = 0;

        for (int temp = number7; temp > 0; temp /= 10) {
            count++;
        }

        if (count == 0) {
            count = 1; // Trường hợp số ban đầu là 0
        }

        System.out.println("Số " + number7 + " có " + count + " chữ số.");
	}

}
