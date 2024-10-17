setup:
install latest version of bash and allow files to execute
```bash
brew install bash
chmod +rwx ./updateTokenList.bash
chmod +rwx ./getJsonList.bash
```

add files with the format:
`addresslist-chainId`

output files will have format
`output-chainId`

run: 

```bash
./updateTokenList.bash
```

for a small amount of tokens

```bash
./getJsonList.bash chain-id token-id-1 token-id-2
```

for an arbitrary file

```bash
./getJsonList.bash chain-id ./path-to-file
```
