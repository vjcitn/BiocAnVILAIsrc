## ----ch1----------------------------------------------------------------------
# Install required packages (install options may depend on OS and version)
install.packages(c("DESeq2", "tidyr", "dplyr", "ggplot2", "BiocManager"))

# Load packages
library(DESeq2)
library(tidyr)
library(dplyr)
library(ggplot2)
library(ggplot2)


## ----ch2----------------------------------------------------------------------
# Example: Load counts and sample metadata
counts <- read.csv("airwaycounts.csv", header = TRUE)
metadata <- read.csv("sample_metadata.csv", header = TRUE)


## ----ch3----------------------------------------------------------------------
# Basic QC checks
sum(counts >= .001)  # Minimum expression
unique(counts)       # Sample names


## ----ch4----------------------------------------------------------------------
# Create sample information structure
design <- ~dex
dds <- DESeqDataSetFromMatrix(
  counts = counts,
  colData = metadata,
  design = design
)

dds <- DESeq(dds)

# Summary of results
results <- results(dds)  # or rownames(results) <- rownames(dds)

# View top changes
#head(top50(results$table = TRUE))


## ----ch5----------------------------------------------------------------------
# PCA with PCA function
pca <- plotPCA(dds, intgroup = "condition")


## ----ch6----------------------------------------------------------------------
# Differential expression barplot
# Use ggplot2 or base R for bar plots
barplot(log2(abs(results$counts)), pch = 19, cex = 0.5)
abline(h = 0, lty = 2)


## ----ch7----------------------------------------------------------------------
# Example of using DESeq2 for filtering low-expression genes
dds <- DESeq(dds)
res <- results(dds)

# Filter genes by log2 fold change
res_filtered <- res[abs(res$log2FoldChange) > 1, ]

# Save results to file
write.csv(as.data.frame(res), "DE_results.csv")
write.csv(res, "DE_results.csv")


## ----ch8----------------------------------------------------------------------
# Read in more data if you want full pipeline:
library("DESeq2")

# Advanced differential expression with DESeq2
dds <- DESeq(dds)

# Visualization
plotPCA(dds, plot.number = 1)

