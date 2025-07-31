def is_pangram(sentence):
    lower = sentence.lower()
    letters = 'abcdefghijklmnopqrstuvwxyz'
    letter_count = {}

    for letter in letters:
        letter_count[letter] = 0

    for c in lower:
        if not c.isalpha():
            continue

        letter_count[c] += 1
            
    if len(sentence) == 0:
        return False
    else:
        for count in letter_count.values():
            if count < 1:
                return False
        return True
