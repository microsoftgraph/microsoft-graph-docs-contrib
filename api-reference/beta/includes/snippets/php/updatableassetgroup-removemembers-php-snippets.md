---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RemoveMembersPostRequestBody();
$assetsUpdatableAsset1 = new AzureADDevice();
$assetsUpdatableAsset1->setOdataType('#microsoft.graph.windowsUpdates.azureADDevice');

$assetsUpdatableAsset1->setId('String (identifier)');


$assetsArray []= $assetsUpdatableAsset1;
$requestBody->setAssets($assetsArray);




$graphServiceClient->admin()->windows()->updates()->updatableAssets()->byUpdatableAssetId('updatableAsset-id')->microsoftGraphWindowsUpdatesRemoveMembers()->post($requestBody);


```