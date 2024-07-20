import html

# Raw HTML entities
html_entities = "&#26979;&#29798;&#31604;&#26676;&#29791;&#26995;&#28215;&#24419;&#26729;&#28211;&#29541;"

# Decode HTML entities
decoded_text = html.unescape(html_entities)
print("Decoded Text:", decoded_text)

# Convert decoded text to its hexadecimal representation
def chars_to_hex(text):
    return ' '.join(format(ord(c), 'x') for c in text)

hex_representation = chars_to_hex(decoded_text)
print("Hexadecimal Representation:", hex_representation)

# Attempt to convert hex values to ASCII if applicable
def hex_to_text(hex_string):
    try:
        bytes_object = bytes.fromhex(hex_string)
        return bytes_object.decode("utf-8", errors='ignore')
    except Exception as e:
        return f"Hex to text conversion failed: {e}"

hex_string = hex_representation.replace(' ', '')
ascii_text = hex_to_text(hex_string)
print("Converted Text:", ascii_text)



