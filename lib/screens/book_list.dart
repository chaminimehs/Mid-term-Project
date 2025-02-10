import 'package:flutter/material.dart';
import '../widgets/book.dart';

class BookstoreScreen extends StatelessWidget {
  const BookstoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ceylon Bookstore'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                BookCard(
                  coverImagePath: 'assets/images/rich dad.jpeg',
                  title: 'Rich Dad, Poor Dad',
                  author: 'Robert T. Kiyosaki',
                  price: 1250,
                ),
                BookCard(
                  coverImagePath: 'assets/images/the alh.jpg',
                  title: 'The Alchemist',
                  author: 'Coelho Paulo',
                  price: 1000,
                ),
                BookCard(
                  coverImagePath: 'assets/images/me are.jpeg',
                  title: 'Men are From Mars',
                  author: 'John Gray',
                  price: 1500,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
