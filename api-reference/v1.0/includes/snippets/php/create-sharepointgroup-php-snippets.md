---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SharePointGroup;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SharePointGroup();
$requestBody->setOdataType('#microsoft.graph.sharePointGroup');
$requestBody->setTitle('Sample Group');
$requestBody->setDescription('This is a sample description');

$result = $graphServiceClient->storage()->fileStorage()->containers()->byFileStorageContainerId('fileStorageContainer-id')->sharePointGroups()->post($requestBody)->wait();

```