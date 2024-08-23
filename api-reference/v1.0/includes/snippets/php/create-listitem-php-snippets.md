---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ListItem;
use Microsoft\Graph\Generated\Models\FieldValueSet;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ListItem();
$fields = new FieldValueSet();
$additionalData = [
	'Title' => 'Widget',
	'Color' => 'Purple',
	'Weight' => 32,
];
$fields->setAdditionalData($additionalData);
$requestBody->setFields($fields);

$result = $graphServiceClient->sites()->bySiteId('site-id')->lists()->byListId('list-id')->items()->post($requestBody)->wait();

```