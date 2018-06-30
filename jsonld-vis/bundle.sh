#!/bin/sh
jsonld_file_path="${1}"
export_dir="$(cd $(dirname ${jsonld_file_path}) && pwd -P)/jsonld-vis"
export_html_dir="$(cd $(dirname ${jsonld_file_path}) && pwd -P)/jsonld-vis/html"
mkdir -p "${export_html_dir}"

jsonld_vis_dir="/jsonld-vis"
example_dir="${jsonld_vis_dir}/example"
example_json_path="${example_dir}/example.json"

rm -f "${example_json_path}"
cp "${jsonld_file_path}" "${example_json_path}"
cd "${example_dir}"
$(npm bin)/webpack-cli --mode=development ./index.js -o bundle.js

cp "${example_dir}/index.html" "${export_html_dir}"
cp "${example_dir}/index.css" "${export_html_dir}"
cp "${example_dir}/bundle.js" "${export_html_dir}"
cp -r "${jsonld_vis_dir}/src" "${export_dir}"
