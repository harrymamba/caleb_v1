const path = require('path');

const HtmlWebpackPlugin = require('html-webpack-plugin');
const HtmlWebpackPluginConfig = new HtmlWebpackPlugin({
  template: './src/index.html',
  filename: 'index.html',
  inject: 'body'
})

module.exports = {
  entry: './src/index.js',
  output: {
    path: path.resolve('dist'),
    filename: 'index_bundle.js'
  },

  devServer: {
    port: 3000,
    inline: true,
    proxy: {
			"/api": "http://localhost:3001",
		}
  },
  module: {
    loaders: [
      { test: /\.js$/, loader: 'babel-loader', exclude: /node_modules/ },
      { test: /\.jsx$/, loader: 'babel-loader', exclude: /node_modules/ },
      {test: /\.scss$/, loaders: [ 'style-loader', 'css-loader', 'sass-loader' ]}
    ]
  },
  plugins: [HtmlWebpackPluginConfig]
}
