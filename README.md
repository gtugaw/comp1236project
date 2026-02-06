# COMP1236 Group Project - Winter 2025

## Overview
Use Git Bash for the completion of this project. To achieve the basic functionality of the application, use only the programming constructs taught in class.

Develop a shell scripting application that allows the user to perform these three tasks:

### Task 1 - Hexagonal numbers
The program should:
- Identify and print all hexagonal numbers within a user-specified range `[a, b]`.
  - Example: For `[8, 100]`, print `15, 28, 45, 66, 91`.
- Indicate whether each hexagonal number is odd or even.
- Count and print:
  - Total number of odd hexagonal numbers.
  - Total number of even hexagonal numbers.
- Compute and print:
  - Sum of all odd hexagonal numbers in the range.
  - Sum of all even hexagonal numbers in the range.

---

### Task 2 - Square numbers
The program should:
- Print all square numbers that appear in odd positions in the sequence, starting from a user-specified initial position.
- Find and print all numbers that can be written as the sum of two consecutive square numbers, up to a user-specified maximum value.
- Features:
  - Generate square numbers in sequence but only print those in odd positions.
  - Check if square numbers found are factors of a user-specified positive integer `x`.
  - Count and print numbers that can be written as the sum of two consecutive square numbers.

---

### Task 3 - Quadratic sequence
The program should:
- Find terms of the sequence: `Term = an^2 + bn + c`, where `a, b, c` are non-negative integers provided by the user, and `n` is a natural number.
- Print sequence terms for a user-specified range `[n1, n2]`.
  - Example: For `a=1, b=2, c=3` and range `[2,4]`, output: `11, 18, 27`.
- Identify and count prime numbers in the range.
- Calculate and print:
  - Sum of all terms in the range `[n1, n2]`.
  - Product of the first and last term in the range.
    - Indicate whether the product is a multiple of a user-specified number `x`.

---

### Menu Design
1. The user must enter a **password** (case-sensitive: `w22`), with three attempts allowed:
   - A warning is displayed after the second incorrect attempt.
2. Upon successful password entry, a menu with three options is displayed:
   - `H` or `h` - Work with hexagonal numbers (Task 1).
   - `S` or `s` - Work with square numbers (Task 2).
   - `Q` or `q` - Work with quadratic sequences (Task 3).
3. If an incorrect task choice is entered:
   - Redisplay menu with a warning message.
4. After completing a task:
   - Allow the user to choose another task or exit.
   - Repeat the process until the user decides to exit.

---

### Additional Requirements
- Design user-friendly interactions.
- Develop flowcharts for each task and a main flowchart for the application's overall logic.

---

## Submission Guidelines
**Deadline:** Friday, April 11th  
**Submission Items:**
1. `Group_No_Flowchart.pdf` - A single PDF with flowcharts.
2. `Group_No_Application.sh` - A single `.sh` file containing the code.
3. A document detailing:
   - Software used for task completion.
   - Work distribution among team members.
4. Three AI declaration forms (one for each team member).

**Format:** Submit as a zip file named `Group_No_Project.zip`.

---

## Rubric
| **Task**                       | **Marks** |
|--------------------------------|-----------|
| Problem Solving - Flowcharts   | 15        |
| Application Menu Interaction   | 10        |
| Task 1 Functionality           | 15        |
| Task 2 Functionality           | 15        |
| Task 3 Functionality           | 15        |
| Adherence to Requirements      | 20        |
| Code Documentation & Conventions | 10      |

_Total: 100 Marks (20% of course grade)_

Updated to test branching
