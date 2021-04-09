# DESeq2

[Return Home](../README.md)

>>>
**From Documentation**

Estimate variance-mean dependence in count data from high-throughput sequencing assays and test for differential expression based on a model using the negative binomial distribution.

The DESeq2 package is designed for normalization, visualization, and differential analysis of high-dimensional count data. It makes use of empirical Bayes techniques to estimate priors for log fold change and dispersion, and to calculate posterior estimates for these quantities.
>>>

A basic task in the analysis of count data from RNA-seq is the detection of differentially expressed genes. The count data are presented as a table which reports, for each sample, the number of sequence fragments that have been assigned to each gene. Analogous data also arise for other assay types, including comparative ChIP-Seq, HiC, shRNA screening, and mass spectrometry. An important analysis question is the quantification and statistical inference of systematic changes between conditions, as compared to within-condition variability. The package DESeq2 provides methods to test for differential expression by use of negative binomial generalized linear models; the estimates of dispersion and logarithmic fold changes incorporate data-driven prior distributions.

## Usage

`DESeqDataSet` - build the dataset, see tximeta & tximport packages for preparing input
`DESeq` - perform differential analysis
`results` - build a results table
`lfcShrink` - estimate shrunken LFC (posterior estimates) using apeglm & ashr pakges • vst - apply variance stabilizing transformation, e.g. for PCA or sample clustering
`Plots` - e.g.: plotPCA, plotMA, plotCounts

## Links

* [Documentation](https://bioconductor.org/packages/release/bioc/manuals/DESeq2/man/DESeq2.pdf)
* [Paper](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-014-0550-8)
* [Beginner's guide to using DESeq2](https://bioc.ism.ac.jp/packages/2.14/bioc/vignettes/DESeq2/inst/doc/beginner.pdf)
* [Analyzing RNA-seq data with DESeq2](https://bioconductor.org/packages/release/bioc/vignettes/DESeq2/inst/doc/DESeq2.html)

## Example
