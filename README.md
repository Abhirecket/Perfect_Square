# Perfect_Square
 This module is useful for generating perfect square values.


 ### RTL Description: Perfect Square Calculator

- **Module Name**: perfect_square
- **Parameters**:
  - `WIDTH`: Width of the output square value.
- **Inputs**:
  - `clk`: Clock input.
  - `rst`: Asynchronous reset input.
- **Outputs**:
  - `sqr_o`: Output representing the perfect square value.
- **Registers**:
  - `count`: Register holding the current count value.
  - `square`: Register holding the current square value.
- **Wires**:
  - `count_nxt`: Wire representing the next count value.
  - `square_nxt`: Wire representing the next square value.
- **Description**:
  - The `perfect_square` module calculates the perfect square value based on a counting sequence.
  - It utilizes two registers, `count` and `square`, to keep track of the current count and square values.
  - Upon each positive clock edge or positive reset signal, the module updates its state.
  - The initial state after reset is set to `count = 3` and `square = 1`.
  - The module then calculates the next count and square values based on the current count and square values.
  - The next count value (`count_nxt`) is obtained by adding `2` to the current count value.
  - The next square value (`square_nxt`) is obtained by adding the next count value to the current square value.
  - The output `sqr_o` represents the perfect square value and is driven by the `square` register.
- **Behavior**:
  - The module continuously generates perfect square values based on a counting sequence.
  - It starts from `1` as the square of `1` is `1`, and then increments the count by `2` to generate successive perfect squares.
- **Additional Comments**:
  - This module is useful for generating perfect square values in digital systems where such functionality is required, such as in mathematics-related applications or algorithms.
