---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\FieldValueSet;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FieldValueSet();
$additionalData = [
	'Color' => 'Fuchsia',
	'Quantity' => 934,
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->sites()->bySiteId('site-id')->lists()->byListId('list-id')->items()->byListItemId('listItem-id')->fields()->patch($requestBody)->wait();

```