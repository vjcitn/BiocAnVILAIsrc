# BiocAnVILAIsrc
Materials for an AI/DL-oriented workshop for NHGRI AnVIL

## Deep learning illustration

An AnVIL cloud environment with 

- custom environment `us.gcr.io/broad-dsp-gcr-public/terra-base:1.0.1`
- 8 CPU, 52GB RAM
- 1 Tesla T4 GPU

will be able to run the [newvar3.ipynb](https://github.com/vjcitn/BiocAnVILAIsrc/blob/main/newvar3.ipynb) application of the Nucleotide Transformer model ([paper](https://www.nature.com/articles/s41592-024-02523-z))

## LLM illustration

- custom environment as above, hardware selections as above
- install the ollama LLM engine, pin version to work with NVIDIA v535 drivers
- `curl -fsSL https://ollama.com/install.sh | sudo OLLAMA_VERSION=0.23.0 sh`

### Setup for using ellmer and btw in R

#### Linux software additions

```
sudo apt update
sudo apt install -y libcurl4-openssl-dev rustc cargo cmake libssl-dev libfontconfig1-dev
sudo apt install -y libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev 
sudo apt install -y libtiff5-dev libjpeg-dev libwebp-dev
```

#### Posit/R software

Using R, preferably >= 4.6

```
install.packages("BiocManager")
BiocManager::install(c("ellmer", "btw"))
```
