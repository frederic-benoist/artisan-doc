# Artisan documentation

## Artisan : The PrestaShop Code Generator

**This module is for developers only.**

An intelligent code generator for PrestaShop 1.7+ to speed up your development process. This tool will help developers generate resources like modules, controllers, grid, forms, routes, and services. It is extremely flexible and customizable to cover many on the use cases.

You can find the artisan module on PrestaShop addons : <https://addons.prestashop.com/en/page-customization/47762-artisan-the-code-generator.html>

There is a charge for this module to cover the development, support and documentation load. You can write a bug ticket or request an improvement concerning the artisan module from this github repository.

## Documentations

- [Artisan version 1.1.x](pdf/Version_1_1_x_en.pdf) 

## How-to

### Module creation

The [shopstory](how-to/module-shopstory.md) module displays the history of the shop on the homepage. It allows to show the creation of the module skeleton. The loading and execution of sql command. The creation of a model (objectmodel). The creation of a legacy CRUD controller in the back office.

## List of artisan command (Version 1.1.x)

```    
php bin/console artisan:configuration:delete {name}
php bin/console artisan:configuration:set {name} {value}
php bin/console artisan:module:create {moduleName}
php bin/console artisan:module:model:create {moduleName} {modelName}
php bin/console artisan:module:admin:form:create {moduleName} {modelName}
php bin/console artisan:module:admin:legacycontroller:create {moduleName} {modelName}
php bin/console artisan:module:admin:crudcontroller:create {moduleName} {modelName}
php bin/console artisan:module:install {moduleName}
php bin/console artisan:module:uninstall {moduleName}
php bin/console artisan:module:zip {moduleName}
php bin/console artisan:module:list [--active|--not-active|--installed|--not-installed]
php bin/console artisan:module:translation:update {moduleName} --subdomain [Admin|Shop]
php bin/console artisan:module:hook:list {moduleName}
php bin/console artisan:module:hook:register {moduleName} {hooks}
php bin/console artisan:module:hook:unregister {moduleName} {hooks}
php bin/console artisan:override:disable
php bin/console artisan:override:enable
php bin/console artisan:override:class {className} {functionName}
php bin/console artisan:shop:disable
php bin/console artisan:shop:enable 
php bin/console artisan:sql:load {filePathAndName} 
php bin/console artisan:sql:snapshot {snapshotName}
php bin/console artisan:sql:restore {snapshotName}
php bin/console artisan:theme:create:child {themeName}
php bin/console artisan:debug:disable
php bin/console artisan:debug:enable 
```    

## Disclaimer

It is highly recommended to backup your server files and database before installing the artisan module. No responsibility can be taken for any adverse effects installation or advice may cause. Recommended you install on a test server initially to carry out your own testing.

THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.