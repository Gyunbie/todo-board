# To-Do Board

To-Do Board is a simple console application to create tasks.

## Usage

- `mklist <new_list_label>` makes a new list with the given label.

- `ls` prints the labels of all lists.

- `showall` prints all lists.

- `mktodo <list_label> <item_title> <item_deadline> <optional_item_description>` adds a new item to the specified list with the given information.

- `toggle <list_label> <item_index>` toggles "done" for the specified item on the given list.

- `rm <list_label> <item_index>` removes the specified item on the given list.

- `purge <list_label>` removes all "done" items on the given list.

- `up <list_label> <item_index> <optional_amount>` moves the specified item higher on the given list.

- `down <list_label> <item_index> <optional_amount>` moves the specified item higher on the given list.

- `swap <list_label> <item_index_1> <item_index_2>` swaps the positions of the specified items on the given list.

- `sort <list_label>` sorts the given list by deadline.

- `priority <list_label>` prints the all information for the item at the top of the given list.

- `print <list_label> <optional_index>` 

  - prints all items of the given list if index is not provided.
  - prints the specific item of the given list if index is provided.
  