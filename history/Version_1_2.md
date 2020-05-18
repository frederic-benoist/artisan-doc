# Version 1.2.1 - 6 april 2020

- Update Webpack to version 4.42 and Babel to version 7.8
- Update package.json, webpack.config.js, css.config.js and js.config.js for WebPack 4.42 and Babel 7.8
- Uses code snippet for automatic creation of hook code

## Update Command

> **artisan:module:create**
> Automatically initiate "composer dump-autoload", "npm install" and "npm run build" commands as required. Ask Module displayName and description.

> **artisan:module:admin:crudcontroller:create**
> Add automatic update of module 

> **artisan:module:model:create** 
> Add automatic update of module 

> **artisan:module:admin:legacycontroller:create** 
> Add automatic update of module 

## New Command

Create front controller in module :
    ```    
    php bin/console artisan:module:front:controller:create {moduleName} {controllerName} 
    ```    

Copy views directory of module in theme : 
    ```    
    php bin/console artisan:module:views:copy {moduleName} {themeName} [overwrite={Ask|Yes|No}] 
    ```    

Create admin controller in module :
    ```    
    php bin/console artisan:module:admin:controller:create {moduleName} {controllerName} 
    ```    

## New list of snippets (Php code)

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
