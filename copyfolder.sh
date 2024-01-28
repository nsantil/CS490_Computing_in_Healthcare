if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_folder> <destination_folder>"
    exit 1
fi

source_folder="$1"
destination_folder="$2"

if [ ! -d "$source_folder" ]; then
    echo "Source folder '$source_folder' does not exist."
    exit 1
fi

if [ ! -d "$destination_folder" ]; then
    mkdir -p "$destination_folder"
fi

cp -r "$source_folder"/* "$destination_folder"/

echo "Files copied successfully from '$source_folder' to '$destination_folder'."

if [ -f "$destination_folder" ]; then
        echo "**********************************" >> "$destination_folder"
        ls "$source_folder" >> "$destination_folder"
fi