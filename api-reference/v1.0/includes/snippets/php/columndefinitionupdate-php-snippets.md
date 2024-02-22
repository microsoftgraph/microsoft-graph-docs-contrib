---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ColumnDefinition();
$requestBody->setRequired(true);
$requestBody->setHidden(false);
$requestBody->setPropagateChanges(false);

$result = $graphServiceClient->sites()->bySiteId('site-id')->contentTypes()->byContentTypeId('contentType-id')->columns()->byColumnDefinitionId('columnDefinition-id')->patch($requestBody)->wait();

```