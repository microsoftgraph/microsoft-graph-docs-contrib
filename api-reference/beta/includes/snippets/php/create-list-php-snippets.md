---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new List();
$requestBody->setDisplayName('Books');

$columnsColumnDefinition1 = new ColumnDefinition();
$columnsColumnDefinition1->setName('Author');

$columnsColumnDefinition1Text = new TextColumn();

$columnsColumnDefinition1->setText($columnsColumnDefinition1Text);

$columnsArray []= $columnsColumnDefinition1;
$columnsColumnDefinition2 = new ColumnDefinition();
$columnsColumnDefinition2->setName('PageCount');

$columnsColumnDefinition2Number = new NumberColumn();

$columnsColumnDefinition2->setNumber($columnsColumnDefinition2Number);

$columnsArray []= $columnsColumnDefinition2;
$requestBody->setColumns($columnsArray);


$list = new ListInfo();
$list->setTemplate('genericList');


$requestBody->setList($list);


$result = $graphServiceClient->sitesById('site-id')->lists()->post($requestBody);


```