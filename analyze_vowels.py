from collections import Counter
import re

vowels = 'aeiou'

with open('data.txt', 'r') as f:
    text = f.read().lower()

text_vowels = re.findall(r'[aeiou]', text)
counter = Counter(text_vowels)

print("### Vowel Frequency Report\n")
for vowel in vowels:
    print(f"{vowel.upper()}: {counter.get(vowel, 0)}")
