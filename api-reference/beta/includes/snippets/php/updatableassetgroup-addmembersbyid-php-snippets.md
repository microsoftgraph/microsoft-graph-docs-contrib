---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AddMembersByIdPostRequestBody();
$requestBody->setIds(['String', 'String', 'String', ]);

$requestBody->setMemberEntityType('#microsoft.graph.windowsUpdates.azureADDevice');



$graphServiceClient->admin()->windows()->updates()->updatableAssetsById('updatableAsset-id')->windowsUpdatesAddMembersById()->post($requestBody);


```