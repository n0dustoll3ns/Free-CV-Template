import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../features/cart/cart_bloc.dart';
import '../../../../../../../features/catalog/products/model/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 0.7, color: Colors.grey.withOpacity(0.3)),
            color: Colors.grey.withOpacity(0.06)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Icon(product.img, size: MediaQuery.of(context).size.width / 3)),
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    product.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Text(
                    '• in stock 1000',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.green),
                  ),
                  Spacer(),
                  Text(
                    '\$${product.price.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    product.name,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CartBloc>().add(AddItem(item: product));
                    },
                    child: Text('Add to cart'),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
    ;
  }
}