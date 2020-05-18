Version 1.2.1 - 6 april 2020

Update Webpack to version 4.42 and Babel to version 7.8
Update package.json, webpack.config.js, css.config.js and js.config.js for WebPack 4.42 and Babel 7.8
Uses code snippet for automatic creation of hook code

Update command artisan:module:create, Automatically initiate "composer dump-autoload", "npm install" and "npm run build" commands as required. Ask Module displayName and description.
Update command artisan:module:admin:crudcontroller:create Adds automatic update of module 
Update command artisan:module:model:create Adds automatic update of module 
Update command artisan:module:admin:legacycontroller:create Adds automatic update of module 

New command artisan:module:front:controller:create {moduleName} {controllerName} Create front controller in module
New command artisan:module:views:copy {moduleName} {themeName} [overwrite={Ask|Yes|No}] Copy views directory of module in theme.
New command artisan:module:admin:controller:create {moduleName} {controllerName} Create admin controller in module

### List of snippets (Php code)
  Default for all hooks
  Hook actionBuildFrontEndObject
  Hook actionFrontControllerSetVariables
  Hook displayBanner
  Hook displayBeforeBodyClosingTag
  Hook displayContentWrapperBottom
  Hook displayContentWrapperTop
  Hook displayFooter
  Hook displayFooterAfter
  Hook displayFooterBefore
  Hook displayHome
  Hook displayLeftColumn
  Hook displayLeftColumnProduct
  Hook displayMaintenance
  Hook displayReassurance
  Hook displayRightColumn
  Hook displayRightColumnProduct
  Hook displayTop
  Hook displayWrapperBottom
  Hook displayWrapperTop
  Hook TermsAndConditions
  