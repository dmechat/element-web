cd ..
git clone https://github.com/matrix-org/matrix-js-sdk.git
pushd matrix-js-sdk
yarn link
yarn install
popd

cd ..
git clone https://github.com/matrix-org/matrix-react-sdk.git
pushd matrix-react-sdk
yarn link
yarn link matrix-js-sdk
yarn install
popd

yarn clean && yarn build:genfiles && yarn build:bundle