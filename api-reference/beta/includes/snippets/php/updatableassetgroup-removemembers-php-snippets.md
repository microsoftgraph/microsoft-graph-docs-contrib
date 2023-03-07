---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RemoveMembersPostRequestBody();
$assetsUpdatableAsset1 = new UpdatableAsset();
$assetsUpdatableAsset1->set@odatatype('#microsoft.graph.windowsUpdates.azureADDevice');

$assetsUpdatableAsset1->setId('String (identifier)');


$assetsArray []= $assetsUpdatableAsset1;
$requestBody->setAssets($assetsArray);




$graphServiceClient->admin()->windows()->updates()->updatableAssetsById('updatableAsset-id')->windowsUpdatesRemoveMembers()->post($requestBody);


```