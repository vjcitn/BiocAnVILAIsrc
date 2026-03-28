## Demonstrations of LLM and deep learning applications in AnVIL, specifically taking advantage of local LLMs and Google Cloud Platform GPUs.

### Setup to use ellmer and btw in R
```
sudo apt update
sudo apt install -y libcurl4-openssl-dev rustc cargo cmake libssl-dev
```
Start R
```
install.packages("BiocManager", ask=FALSE, update=FALSE)
BiocManager::install(c("ellmer", "btw"))
```

### Installing ollama LLM engine
```
curl -fsSL https://ollama.com/install.sh | sh
```
