---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ColumnDefinition;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ColumnDefinition();
$requestBody->setRequired(true);
$requestBody->setHidden(false);

$result = $graphServiceClient->storage()->fileStorage()->containers()->byFileStorageContainerId('fileStorageContainer-id')->columns()->byColumnDefinitionId('columnDefinition-id')->patch($requestBody)->wait();

```