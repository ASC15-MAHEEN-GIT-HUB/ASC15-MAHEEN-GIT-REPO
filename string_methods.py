text = "  Python is Fun!  "
words = ["Learn", "Python", "Now"]

print(f"Original text: '{text}'\n")


print(f"1. Indexing: text[3] -> '{text[3]}'")

print(f"2. Slicing: text[2:8] -> '{text[2:8]}'")

print(f"3. Membership: 'Fun' in text -> {'Fun' in text}")

print(f"4. len(): len(text) -> {len(text)}")

print(f"5. lower(): text.lower() -> '{text.lower()}'")
print(f"6. upper(): text.upper() -> '{text.upper()}'")

print(f"7. strip(): text.strip() -> '{text.strip()}'")

print(f"8. find(): text.find('is') -> {text.find('is')}")

example_rfind = "apple pie apple"
print(f"9. rfind(): '{example_rfind}'.rfind('apple') -> {example_rfind.rfind('apple')}")

print(f"10. join(): '-'.join({words}) -> '{'-'.join(words)}'")

other_text = "Python is Fun!"
print(f"11. Equality: text.strip() == other_text -> {text.strip() == other_text}")

print(f"12. Case-insensitive equality: text.lower() == '  python is fun!  '.lower() -> {text.lower() == '  python is fun!  '.lower()}")