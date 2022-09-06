# Lab 1 : CEG 3400 Intro to Cyber Security

## Name:

### Task 1: Hashing

**Reminder Deliverable:** Is your `salted-data.csv` in this repository?

Answer the following in this file:

* How many unique users are in the data?
	* 30
* How many salts did you create?
	* 30
* How many possible combinations will I need to try to figure out the secret ID
  of all students (assume I know all potential secret IDs)
	* Assuming that each 5 character salt can contain a sequence of lowercase letters and numbers 0-9, there are 36 different possible characters for each character in each position of a salt.
	* For guessing one student's secret ID, you will need to (on average) try half of all salts. There are (36!/31!) possible permutation salts, so you would need to guess (36!/(31!*2)) different salts.
	* This means that for guessing all 30 secret ids, you will need to (on average) try (15(36!/31!)) salts to guess all secret IDs.
* Instead of salts, if you were to use a nonce (unique number for each hashed
  field) how many possible combinations would I need to try?
	* Assuming 5 digit nonces, for one ID you would need to (on average) try (10!/(5!*2)) different nonces.
	* For 30 students, this means trying (15(10!/5!)) different nonces.
* Given the above, if this quiz data were *actual* class data, say for example
  your final exam, how would you store this dataset?  Why?
	* I would want to hash the names, question prompts, and question answers for each data entry, as potential threats could acquire sensitive information for all of those. The time that the attempt started 
	  and ended wouldn't matter because final exam times are public on Wright State's website. I would salt and/or nonce the sensitive information before hashing it, and if I needed to send the data to someone else,
	  I would use a secure encryption scheme like RSA or ElGamal to send it.

```bash
please put any cool bash one-liners or other piped commands you
learned/struggled with for task 1 here
`$RANDOM`

---

### Task 2: Crypto Mining

**Reminder Deliverable:** Is your "mining" code in this repository (`mining/`)?
**Reminder Deliverable:** Is your nonce + word combos in `coins.txt`?

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

	* `000075bfaf2cabb0fce1410be530076cf19b88ca8464fe9979964e01c6234ea7 - 28074these`

	* `BONUS ("00000" Hash) 00000a1a28fc165e4d058deb815feb7670a5651ad42a0a5f55107cc7bee83eef - 321909these`

* What did you think about Task 2?
	* Task 2 was rather straightfoward and easy to understand. I gave up on Task 1 and decided to do Task 2 instead, in case it makes figuring out Task 1 easier.
* Is there a better way than brute force to attempt to get higher valued coins?
	* No
* Why or why not?
	* Changing the nonce by even one character will completely alter the resulting hash. There is no (known) non-trivial way to mine higher valued coins because the hash function is a one-way function.

```bash
please put any cool bash one-liners or other piped commands you
learned/struggled with for task 2 here
```

