# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

################################################
### Clear any existing data ####################
################################################

TransactionType.delete_all
AccountHolder.delete_all
Account.delete_all
Transaction.delete_all


################################################
### Create TransactionType records #############
################################################

debit_transaction = TransactionType.create!(transaction_type: 'debit')
credit_transaction = TransactionType.create!(transaction_type: 'credit')
adjustment_transaction = TransactionType.create!(transaction_type: 'adjustment')


################################################
### Create AccountHolder records ###############
################################################

jackie_jackson = AccountHolder.create!(first_name: 'Jackie', last_name: 'Jackson', email: 'jackie_jackson@jacksonfive.net', password: '$2a$10$NAH/M3QTNqpmYv7aNfs8TOCccvJbYD28u1Ip/U/WLOZVEPe2hV1Ou')

tito_jackson = AccountHolder.create!(first_name: 'Tito', last_name: 'Jackson', email: 'tito_jackson@jacksonfive.net', password: '$2a$10$riQ6odIr1qLygscFYj1GIuvVvchsUSUxEY7bgwToUqDc0NQGX3k2u')

jermaine_jackson = AccountHolder.create!(first_name: 'Jermaine', last_name: 'Jackson', email: 'jermaine_jackson@jacksonfive.net', password: '"$2a$10$riQ6odIr1qLygscFYj1GIuvVvchsUSUxEY7bgwToUqDc0ASDX3k2u')

marlon_jackson = AccountHolder.create!(first_name: 'Marlon', last_name: 'Jackson', email: 'marlon_jackson@jacksonfive.net', password: '$3a$112riQ6odaR1qaagscFYj1GIuvVvchsUSUxEY7bgwToUqDc0NQGX3k2u')

michael_jackson = AccountHolder.create!(first_name: 'Michael', last_name: 'Jackson', email: 'michael_jackson@jacksonfive.net', password: '$3a$112riQ6odaR1qaagsdasda1GIuvVvchsUSUxEY7bgwToUqDc0NQGX3k2u')


################################################
### Create Account records #####################
################################################

jackie_jackson_checking = Account.create!(account_holder_id: jackie_jackson.id, account_type: 'checking')
jackie_jackson_savings = Account.create!(account_holder_id: jackie_jackson.id, account_type: 'savings')
jackie_jackson_market = Account.create!(account_holder_id: jackie_jackson.id, account_type: 'market')

tito_jackson_checking = Account.create!(account_holder_id: tito_jackson.id, account_type: 'checking')
tito_jackson_savings = Account.create!(account_holder_id: tito_jackson.id, account_type: 'savings')

jermaine_jackson_checking = Account.create!(account_holder_id: jermaine_jackson.id, account_type: 'checking')
jermaine_jackson_savings = Account.create!(account_holder_id: jermaine_jackson.id, account_type: 'savings')
jermaine_jackson_market = Account.create!(account_holder_id: jermaine_jackson.id, account_type: 'market')

marlon_jackson_checking = Account.create!(account_holder_id: marlon_jackson.id, account_type: 'checking')
marlon_jackson_savings = Account.create!(account_holder_id: marlon_jackson.id, account_type: 'savings')

michael_jackson_checking = Account.create!(account_holder_id: michael_jackson.id, account_type: 'checking')
michael_jackson_savings = Account.create!(account_holder_id: michael_jackson.id, account_type: 'savings')


################################################
### Create Transactions records ################
################################################

Transaction.create!(account_id: jackie_jackson_checking.id, amount_in_cents: 15_000_000_00, transaction_type_id: credit_transaction.id, occurred_at: 8.years.ago)
Transaction.create!(account_id: jackie_jackson_checking.id, amount_in_cents: 1_000_000_00, transaction_type_id: credit_transaction.id, occurred_at: 8.years.ago)

Transaction.create!(account_id: jackie_jackson_savings.id, amount_in_cents: 10_000_000_00, transaction_type_id: credit_transaction.id, occurred_at: 25.years.ago)
Transaction.create!(account_id: jackie_jackson_savings.id, amount_in_cents: 1_000_000_00, transaction_type_id: credit_transaction.id, occurred_at: 17.years.ago)
Transaction.create!(account_id: jackie_jackson_savings.id, amount_in_cents: 1_000_000_00, transaction_type_id: credit_transaction.id, occurred_at: 11.years.ago)


Transaction.create!(account_id: tito_jackson_savings.id, amount_in_cents: 10_000_000_00, transaction_type_id: credit_transaction.id, occurred_at: 25.years.ago)
Transaction.create!(account_id: tito_jackson_checking.id, amount_in_cents: 2_457_23, transaction_type_id: credit_transaction.id, occurred_at: 32.weeks.ago)
Transaction.create!(account_id: tito_jackson_checking.id, amount_in_cents: 2_457_43, transaction_type_id: credit_transaction.id, occurred_at: 31.weeks.ago)
Transaction.create!(account_id: tito_jackson_checking.id, amount_in_cents: 2_457_13, transaction_type_id: credit_transaction.id, occurred_at: 30.weeks.ago)
Transaction.create!(account_id: tito_jackson_checking.id, amount_in_cents: 1_231_10, transaction_type_id: debit_transaction.id, occurred_at: 30.weeks.ago)
Transaction.create!(account_id: tito_jackson_checking.id, amount_in_cents: 2_457_45, transaction_type_id: credit_transaction.id, occurred_at: 22.weeks.ago)
Transaction.create!(account_id: tito_jackson_checking.id, amount_in_cents: 2_457_43, transaction_type_id: credit_transaction.id, occurred_at: 21.weeks.ago)
Transaction.create!(account_id: tito_jackson_checking.id, amount_in_cents: 1_131_10, transaction_type_id: debit_transaction.id, occurred_at: 18.weeks.ago)
Transaction.create!(account_id: tito_jackson_checking.id, amount_in_cents: 2_457_43, transaction_type_id: credit_transaction.id, occurred_at: 1.week.ago)

Transaction.create!(account_id: jermaine_jackson_savings.id, amount_in_cents: 10_000_000_01, transaction_type_id: credit_transaction.id, occurred_at: 25.years.ago)
Transaction.create!(account_id: jermaine_jackson_checking.id, amount_in_cents: 40_000_00, transaction_type_id: credit_transaction.id, occurred_at: 5.years.ago)
Transaction.create!(account_id: jermaine_jackson_checking.id, amount_in_cents: 1_124_12, transaction_type_id: credit_transaction.id, occurred_at: 235.days.ago)
Transaction.create!(account_id: jermaine_jackson_checking.id, amount_in_cents: 1_124_12, transaction_type_id: credit_transaction.id, occurred_at: 228.days.ago)
Transaction.create!(account_id: jermaine_jackson_checking.id, amount_in_cents: 1_124_12, transaction_type_id: credit_transaction.id, occurred_at: 221.days.ago)
Transaction.create!(account_id: jermaine_jackson_checking.id, amount_in_cents: 1_124_12, transaction_type_id: credit_transaction.id, occurred_at: 214.days.ago)


Transaction.create!(account_id: marlon_jackson_savings.id, amount_in_cents: 10_000_000_00, transaction_type_id: credit_transaction.id, occurred_at: 25.years.ago)

Transaction.create!(account_id: michael_jackson_savings.id, amount_in_cents: 10_000_000_00, transaction_type_id: credit_transaction.id, occurred_at: 25.years.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 10_000_000_00, transaction_type_id: credit_transaction.id, occurred_at: 25.years.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: 13.years.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 1).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 1).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 2).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 3).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 4).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 5).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 6).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 7).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 8).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 9).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 10).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 60_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 11).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 12).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 70_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 13).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 14).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 90_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 15).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 40_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 16).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 120_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 17).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 30_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 18).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 10_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 19).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 20).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 40_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 21).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 20_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 22).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 510_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 23).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 530_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 24).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 150_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 25).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 26).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 27).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 28).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 29).weeks.ago)
Transaction.create!(account_id: michael_jackson_checking.id, amount_in_cents: 50_000_00, transaction_type_id: debit_transaction.id, occurred_at: (13*52 - 30).weeks.ago)
