FROM node:9-slim
WORKDIR /
RUN apt-get update -y && apt-get install -y git 
RUN git clone https://github.com/scienceai/jsonld-vis
RUN cd /jsonld-vis && npm install d3 d3-tip style-loader css-loader webpack webpack-cli --save-dev
ADD ./bundle.sh /bundle
RUN chmod +x /bundle
CMD ["bash"]
