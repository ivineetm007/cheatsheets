# PROTOCOL BUFFERS
### Compile single file in python
```protoc -I=<import folder path> --python_out=<out folder path> <proto_file_path>```
### Compile all files in a folder for python
```protoc -I=<import folder path> --python_out=<out folder path> <proto_folder_path>/*.proto```