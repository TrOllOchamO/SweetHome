# get the latest version of the font
font_version=$(curl -s 'https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest' | jq -r '.name')
if [ -z "$font_version" ] || [ "$font_version" = "null" ]; then
  font_version="v3.2.1"
fi

# fetch the font
font_name="UbuntuMono"
zip_file="${font_name}.zip"
download_url="https://github.com/ryanoasis/nerd-fonts/releases/download/${font_version}/${zip_file}"
fonts_dir="${HOME}/.local/share/fonts"
if [[ ! -d "$fonts_dir" ]]; then
  mkdir -p "$fonts_dir"
fi
wget "$download_url"

# install the font
unzip -o "$zip_file" -d "$fonts_dir"
rm "$zip_file"
find "$fonts_dir" -name 'Windows Compatible' -delete
fc-cache -fv
