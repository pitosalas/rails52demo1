
console.log('Hello World from Webpacker')

import "../../../node_modules/bulma/bulma.sass";
import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("../controllers", true, /\.js$/)
application.load(definitionsFromContext(context))
