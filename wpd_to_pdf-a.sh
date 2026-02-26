#!/bin/bash

# 1. Define your folders (Change these to your actual paths)
SOURCE_DIR="$HOME/Documents/WPD_Files"
DEST_DIR="$HOME/Documents/PDF_Exports"

# 2. Create destination if it doesn't exist
mkdir -p "$DEST_DIR"

# 3. Path to LibreOffice executable on macOS
LIBREOFFICE="/Applications/LibreOffice.app/Contents/MacOS/soffice"

# 4. Loop through and convert
echo "Starting conversion..."

for file in "$SOURCE_DIR"/*.wpd; do
    if [ -f "$file" ]; then
        echo "Converting: $file"
        "$LIBREOFFICE" --headless --convert-to pdf:writer_pdf_Export --outdir "$DEST_DIR" "$file"
    fi
done

echo "Done! Check your files in $DEST_DIR"
