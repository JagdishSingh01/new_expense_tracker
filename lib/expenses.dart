import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_expense_tracker/expenses_list.dart';
import 'package:new_expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter course', 
      amount: 19.99, 
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema', 
      amount: 16.69, 
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'fire nation', 
      amount: 29.99, 
      date: DateTime.now(),
      category: Category.food,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('the chart'), 
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
