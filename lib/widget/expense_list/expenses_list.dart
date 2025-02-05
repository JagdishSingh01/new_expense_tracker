import 'package:flutter/material.dart';
import 'package:new_expense_tracker/models/expense.dart';
import 'package:new_expense_tracker/widget/expense_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length , 
      itemBuilder: (ctx, index)=> ExpenseItem(expenses[index]),
    );
  }
}
