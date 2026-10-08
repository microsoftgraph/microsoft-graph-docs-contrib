---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Storage\FileStorage\Containers\Item\RecycleBin\Items\Restore\RestorePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RestorePostRequestBody();
$requestBody->setIds(['5d625d33-338c-4a77-a98a-3e287116440c', '73133853-48f2-4956-bc4a-03f8d1675042', 	]);

$result = $graphServiceClient->storage()->fileStorage()->containers()->byFileStorageContainerId('fileStorageContainer-id')->recycleBin()->items()->restore()->post($requestBody)->wait();

```