FROM bioconductor/release_base2:R3.5.0_Bioc3.7
RUN R -e 'install.packages("ggplot2")'
RUN R -e 'install.packages("devtools", repos="https://cran.ism.ac.jp/"); devtools::install_github("hoxo-m/pforeach")'
CMD ["bash"]
