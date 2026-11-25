
#!/bin/bash

set -euo pipefail

echo "===================================="
echo "       GPU Server Setup v0.1.0"
echo "===================================="

# Select Python version
echo "Select Python version:"
echo "  [1] Python 3.10"
echo "  [2] Python 3.11"
echo "  [3] Python 3.12"

read -rp "Enter your choice [3]: " choice

case "${choice:-3}" in
    1) VERSION="3.10" ;;
    2) VERSION="3.11" ;;
    3) VERSION="3.12" ;;
    *)
        echo "[ERROR] Invalid choice."
        exit 1
        ;;
esac

# Define paths
PYTHON="/usr/local/python${VERSION}/bin/python3"
VENV="${HOME}/myvenv${VERSION}"

# Check Python installation
if [[ ! -x "$PYTHON" ]]; then
    echo "[ERROR] Python not found or not executable: $PYTHON"
    exit 1
fi

# Check existing virtual environment
if [[ -e "$VENV" || -L "$VENV" ]]; then
    echo "[INFO] Path already exists: $VENV"
    echo "[INFO] No changes were made."
    exit 0
fi

# Create a virtual environment
echo "Creating virtual environment..."

"$PYTHON" -m venv --system-site-packages "$VENV"

# Check Python version
"$VENV/bin/python" --version

echo "[OK] Setup completed."
echo ""
echo "To activate your environment:"
echo "source $VENV/bin/activate"
