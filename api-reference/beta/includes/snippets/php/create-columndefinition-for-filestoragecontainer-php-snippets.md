---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ColumnDefinition;
use Microsoft\Graph\Beta\Generated\Models\TextColumn;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ColumnDefinition();
$requestBody->setDescription('test');
$requestBody->setEnforceUniqueValues(false);
$requestBody->setHidden(false);
$requestBody->setIndexed(false);
$requestBody->setName('Title');
$text = new TextColumn();
$text->setAllowMultipleLines(false);
$text->setAppendChangesToExistingText(false);
$text->setLinesForEditing(0);
$text->setMaxLength(255);
$requestBody->setText($text);

$result = $graphServiceClient->storage()->fileStorage()->containers()->byFileStorageContainerId('fileStorageContainer-id')->columns()->post($requestBody)->wait();

```