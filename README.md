## README

# To get setup:

* `bundle`
* `rake db:create`
* `rake db:migrate`
* `rake db:seed`

## Premise

Imagine we are building a transaction tracking system for a bank. The main entities which we are concerned with are `Accounts`, `Account Holders`, and `Transactions`. Since we are A+ SQL developers and do not want to duplicate data anywhere in our database, we noticed that transactions usually have a type associated with them ("credit", "debit" or "adjustment") and made an entity for it, `TransactionType` to keep things straight.

## Exploring with `psql`

* To explore this database, open a Terminal window and type: `psql -d querying_with_active_record_development` from any directory

## Exploring with `rails c`

* Another way of exploring the database is by using `rails c` (short for console) to explore via the models, to do this you will need to be in the root directory of the project.

## What to do

Using http://api.rubyonrails.org/classes/ActiveRecord/QueryMethods.html and your knowledge of SQL, provide two answers:
  1. the corresponding SQL,
  1. the equivalent using `ActiveRecord` query methods - for each of the following questions:

#### Questions:

1. How many `AccountHolder` records are there?

  1. `SQL`: SELECT COUNT(id)
            FROM account_holders;

  2. `ActiveRecord`:  AccountHolder.count

1. How many `Account` records are there?

  1. `SQL`: SELECT COUNT(id)
            FROM accounts;

  2. `ActiveRecord`:  Account.count

1. How many `Account` records are there with the `account_type = 'savings'`?

  1. `SQL`: SELECT COUNT(*)
            FROM accounts
            WHERE accounts.account_type = 'savings';

  2. `ActiveRecord`:  Account.where(account_type:'savings').count

1. How many `Transaction` records are there with the `transaction_type_id` equal to the `TransactionType` for `'debit'`?

  1. `SQL`: SELECT COUNT(transaction_type_id)
            FROM transactions
            WHERE transaction_type_id = (SELECT id FROM transaction_types WHERE transaction_type = 'debit');

            SELECT COUNT(transaction_type_id)
            FROM transactions, transaction_types
            WHERE transactions.transaction_type_id = transaction_types.id
            AND transaction_type = 'debit';

            SELECT COUNT(transaction_type_id)
            FROM transactions
            INNER JOIN transaction_types
            ON transactions.transaction_type_id =
            transaction_types.id AND transaction_type = 'debit';



  2. `ActiveRecord`:  Transaction.where(transaction_type_id: 1).count

                      transaction_id = TransactionType.where(transaction_type:'debit').first.id
                      Transaction.where(transaction_type_id: id).count

                      TransactionType.joins("INNER JOIN transactions ON transaction_type_id = transaction_types.id AND transaction_type_id =
                      (SELECT id FROM transaction_types WHERE transaction_type = 'debit')").count

1. What is the sum of all debit transactions?

  1. `SQL`:   SELECT SUM(transactions.amount_in_cents)
              FROM transactions
              WHERE transactions.transaction_type_id = 1;

  2. `ActiveRecord`:  Transaction.where(transaction_type_id:1).sum(:amount_in_cents)

1. What is the sum of all credit transactions where the `amount_in_cents` is greater than `100000000`?

  1. `SQL`:   SELECT SUM(amount_in_cents)
              FROM transactions
              INNER JOIN transaction_types
              ON transactions.transaction_type_id = transaction_types.id
              WHERE transaction_types.transaction_type = 'credit' AND amount_in_cents > 100000000;

  2. `ActiveRecord`:  Transaction.where('amount_in_cents > 100000000 AND transaction_type_id = 2').map(&:amount_in_cents).sum

                      Transaction.select(:amount_in_cents).where('amount_in_cents > 100000000 AND transaction_type_id = 2').sum(:amount_in_cents)



1. Produce an output set containing one line per account, including the `AccountHolder`'s `first_name` and `last_name`, as well as the `account_type`. The column headers would look something like:

  `first_name, last_name, account_type`

  1. `SQL`:   SELECT first_name, last_name, account_type
              FROM account_holders
              INNER JOIN accounts ON account_holders.id = accounts.account_holder_id;

  2. `ActiveRecord`:   AccountHolder.select('account_holders.first_name', 'account_holders.last_name', 'accounts.account_type').joins('INNER JOIN accounts ON account_holders.id = accounts.account_holder_id')

1. Produce output containing one line per `AccountHolder` containing `first_name`, `last_name`, `SUM(all debit transactions)`, `SUM(all credit transactions)`). The column headers would look something like:

  `account_holder_id, first_name, last_name, all_debit_transactions, all_credit_transactions`

    1. `SQL`:

    2. `ActiveRecord`:

1. Is there any instance where data is duplicated? If so, write a migration that creates the structure we would need to remove the duplication and modifies any existing structures to use the new, de-duplicated data structure. Run those migrations. What happened to our data?
