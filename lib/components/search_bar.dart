import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key, required this.updateSeatState});

  final Function updateSeatState;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController searchController = TextEditingController();
  // border color
  Color borderColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Search",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: borderColor, width: 1, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: borderColor, width: 1, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                // if the search field is empty or not a number, then change the border color to red
                if (searchController.text.isEmpty ||
                    int.tryParse(searchController.text) == null) {
                  setState(() {
                    borderColor = Colors.red;
                  });

                  searchController.clear();

                  FocusScope.of(context).unfocus();
                  return;
                }

                // if the search field is not empty and is a number, then change the border color to grey
                setState(() {
                  borderColor = Colors.grey;
                });
                widget.updateSeatState(int.parse(searchController.text));
                searchController.clear();
                // remove keyboard
                FocusScope.of(context).unfocus();
              },
              icon: const Icon(Icons.search),
            ),
          ],
        ));
  }
}
