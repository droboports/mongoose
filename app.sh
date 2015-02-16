### MONGOOSE ###
_build_mongoose() {
local BRANCH="master"
local FOLDER="app"
local URL="https://github.com/cesanta/mongoose.git"

_download_git "${BRANCH}" "${FOLDER}" "${URL}"
pushd "target/${FOLDER}/examples/web_server"
make
mkdir -p "${DEST}/bin"
cp web_server "${DEST}/bin/"
popd
}

### BUILD ###
_build() {
  _build_mongoose
  _package
}
