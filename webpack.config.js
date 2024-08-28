const path = require('path');

module.exports = {
  entry: './index.js',  // Point d'entrée de votre application
  output: {
    filename: 'bundle.js',  // Nom du fichier de sortie
    path: path.resolve(__dirname, 'dist'),  // Répertoire de sortie
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
        },
      },
    ],
  },
};
