add files with the format:
`addresslist-chainId`

output files will have format
`output-chainId`

run

```bash
chmod +rwx ./updateTokenList.bash
./updateTokenList.bash
```

for a small amount of tokens

```bash
chmod +rwx ./getJsonList.bash
./getJsonList.bash chain-id token-id-1 token-id-2
```

for an arbitrary file

```bash
chmod +rwx ./getJsonList.bash
./getJsonList.bash chain-id ./path-to-file
```
