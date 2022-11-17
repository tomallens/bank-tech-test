# Bank tech test

## Functionality

- Deposit/Withdraw money
- Print Statement with date of transaction and balance, eg.

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

## Setup

```
# This assumes you have Ruby & RVM installed. If you don't, visit:
# https://rvm.io/ to install RVM.

; cd bank-tech-test
; rvm get stable
; rvm use ruby --latest --install --default
; bundle install
```

## Testing

```
; rspec
```

## Usage

You can now use 
```
; irb
```
to use the application from the home directory - all files should be loaded by default.

```
> App.deposit(10) # deposit
> App.withdraw(50) # withdraw (overdrawing is valid)
> App.print_statememt # prints the statement
```

## Thoughts

It may or may not be worth splitting the text formatting aspects of the Statement class into a dedicated Formatter, given that the project did not demand a proper I/O.

Further work needed is robust error handling, problably warranting a separate class and tighter control/elimination of floats.

The App class should be able to be more thoroughly mocked, although I'm happy that I have total test coverage.