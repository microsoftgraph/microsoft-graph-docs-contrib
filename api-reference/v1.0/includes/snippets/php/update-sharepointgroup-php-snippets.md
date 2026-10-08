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
$requestBody->setTitle('This is the new group title');
$requestBody->setDescription('Updated group description');

$result = $graphServiceClient->storage()->fileStorage()->containers()->byFileStorageContainerId('fileStorageContainer-id')->sharePointGroups()->bySharePointGroupId('sharePointGroup-id')->patch($requestBody)->wait();

```