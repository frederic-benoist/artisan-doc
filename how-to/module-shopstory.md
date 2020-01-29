# Creating the Sample Module : ShopStory

This tutorial shows the creation of a module for PrestaShop 1.7 (from  1.7.6) using the artisan code generator.

To run this tutorial you need the following tools:

- Composer (For autoload management).
- The [artisan](https://addons.prestashop.com/en/page-customization/47762-artisan-the-code-generator.html) module (for code generation).

>All commands must be run from a shell and from the root folder of the prestashop installation.

## 1- First step: creation of the module skeleton

```
php bin/console artisan:module:create shopstory
```

The artisan module will ask a few questions:

- Company name for module namespace? Answer with : **AcmeInc**
- Module hook List? Answer with : **displayHome**
- Implement widget Interface?  Answer with : **1** (yes)
- Create templates for content hooks? Answer with **0** (No)
  
At the end of the command, the shopstory module skeleton is created. 
The last step of the module creation consists in launching the generation of the autoload with composer.

  ```
  cd ./modules/shopstory
  composer dump-autoload
  cd ../..  
  ```

## 2 - Second step: creating the tables in the database.

You must first download the example sql files. This operation is to be done once for all the tutorials.

```
git clone https://github.com/frederic-benoist/artisan-doc.git artisan_sample
```

Then you can use the artisan module to execute the SQL command file.

```
php bin/console artisan:sql:load ./artisan_sample/sql/shophistory.sql
```

This command will load and execute sql requests from the shophistory.sql file. Two new tables are added to the database to manage the history of the shop: shophistory and shophistory_lang.

## 3 - Third step: creating the model

```
php bin/console artisan:module:model:create shopstory shophistory
```

This command automatically creates the class model (ObjectModel) allowing to manipulate the information stored in the shophistory and shophistory_lang tables. 

At the end of the command, the shopstory model is created. The last step in the creation of the model is to add the creation of tables and their deletions during the installation and uninstallation of the module (SQL statements are in the code of the new model). 

To do this, we are going to relaunch the module creation command to force its update.

```
php bin/console artisan:module:create shopstory
```

## 4 - Fourth step: adding of a legacy back office CRUD controller

```
php bin/console artisan:module:admin:legacycontroller:create shopstory shophistory
```

This command automatically creates a legacy crud controller allowing to create, read, update and delete shophistory.

The last step is to add and remove the controller link in the PrestaShop back office menu during the installation and uninstallation of the module. To do this, we are going to relaunch the module creation command to force its update.

```
php bin/console artisan:module:create shopstory
```

## 5 - Last step: Displaying shop information.

To display the information, we need to add a function to read the history of the shop in the Shophistory model.   

Add the getAll function in the model (File /src/Model/Shophistory.php)

```
public static function getAll($id_lang = null)
{
    $id_lang = is_null($id_lang) ? (int)\Context::getContext()->language->id : (int)$id_lang;

    $query = new \DbQuery();
    $query->from('shophistory', 'sh');
    $query->innerJoin(
        'shophistory_lang',
        'shl',
        'sh.id_shophistory = shl.id_shophistory AND shl.id_lang = '.(int)$id_lang
    );
    $query->where('sh.active = 1');
    $query->orderBy('sh.date_history DESC');
    return Db::getInstance(_PS_USE_SQL_SLAVE_)->executeS($query);
}
```

Finally, we have to modify the module and the template to display the data.

Modify the getWidgetVariables function of the module (File shopstory.php) 

```
public function getWidgetVariables($hookName, array $params)
{
    return array_merge(
        $params,
        array(
          'hookName' => $hookName,
          'records' =>  Shophistory::getAll()
        )
    );
}
```

Modify the template used by the displayHome hook (File /views/templates/hook/widget.tpl)

```
{foreach from=$records item=record}
  <div class="history-record">
    {$record.date_history} - {$record.title}<br/>
    {$record.history nofilter}
  </div>
{/foreach}
```

You can now install the module, and see the result on the shop homepage.

## Go further.

- You can change the appearance of the data entry form in the back office by changing the order of the fields.

- You can replace the legacy controller with a modern controller.
