if [[ -n $CONFIG_JSON_URL ]]; then
	echo "config.json raw direct url detected downloading now..."
    wget -O config.json $CONFIG_JSON_URL
fi

python3 React.py

