title: A page whose semicolons are all in code, quotations and tables
expect:
why: Each semicolon is inside inline code, a source block, a quotation or a table row, none of which is prose.
path: workshop/index.org
---
#+TITLE: Workshop

The lathe runs on a single phase supply.
The supplier said "order the belt now; the stock is low".
Run =make clean; make= to rebuild the inventory.

| Tool  | Note           |
|-------+----------------|
| Lathe | belt; bearings |

#+begin_src sh
cd inventory; make
#+end_src
