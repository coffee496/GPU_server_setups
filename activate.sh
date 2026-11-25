
#!/bin/bash

echo "===================================="
echo "      GPU Environment Activation"
echo "===================================="

# Detect available virtual environments
venvs=()

for venv in "$HOME"/myvenv*; do
    if [[ -f "$venv/bin/activate" ]]; then
        venvs+=("$venv")
    fi
done

# Check the number of virtual environments
case "${#venvs[@]}" in
    0)
        echo "[ERROR] No virtual environments found."
        echo "Run setup.sh first."
        return 1
        ;;
    1)
        source "${venvs[0]}/bin/activate"
        ;;
    *)
        echo "Available virtual environments:"

        select venv in "${venvs[@]}"; do
            if [[ -n "$venv" ]]; then
                source "$venv/bin/activate"
                break
            else
                echo "[ERROR] Invalid choice."
            fi
        done
        ;;
esac

# Check activation
if [[ -n "${VIRTUAL_ENV:-}" ]]; then
    echo "[OK] Virtual environment activated."
    echo "Environment: $VIRTUAL_ENV"
    python --version
else
    echo "[ERROR] Activation failed."
    return 1
fi
