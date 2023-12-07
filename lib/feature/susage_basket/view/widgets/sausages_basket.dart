import 'package:flutter/material.dart';
import '../../../../core/constants/asset_image.dart';
import '../../data/models/sausage_model.dart';

class SausagesBasket extends StatelessWidget {
  final List<SausageModel> sausages;
  const SausagesBasket(this.sausages, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [sausageDetail(), sausageBasket(), itemPrice(), totalPrice()],
    );
  }

  sausageDetail() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(sausages.first.shortDescription ?? "",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text(sausages.first.fullDescription ?? "",
                style: const TextStyle(fontSize: 12))
          ]),
    );
  }

  sausageBasket() {
    return Stack(children: [sausageImage(), quantityCounter()]);
  }

  sausageImage() {
    return Image.asset(AssetImages.sausageRoll, width: 256);
  }

  quantityCounter() {
    int quantity = sausages.length;
    return Container(
      height: 32,
      width: 32,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.blue.shade100, borderRadius: BorderRadius.circular(32)),
      child: Text('x$quantity',
          style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  itemPrice() {
    double itemPrice = sausages.first.price ?? 0.0;
    return Text('Item Price : ${itemPrice.toStringAsFixed(2)}',
        style: const TextStyle(fontSize: 20));
  }

  totalPrice() {
    double itemPrice = sausages.first.price ?? 0.0;
    int quantity = sausages.length;
    double totalPrice = itemPrice * quantity;
    return Text('Total Price : ${totalPrice.toStringAsFixed(2)}',
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24));
  }
}
