---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AddMembersByIdPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddMembersByIdPostRequestBody();
$requestBody->setIds(['String', 'String', 'String', 	]);
$requestBody->setMemberEntityType('#microsoft.graph.windowsUpdates.azureADDevice');

$graphServiceClient->admin()->windows()->updates()->updatableAssets()->byUpdatableAssetId('updatableAsset-id')->microsoftGraphWindowsUpdatesAddMembersById()->post($requestBody)->wait();

```