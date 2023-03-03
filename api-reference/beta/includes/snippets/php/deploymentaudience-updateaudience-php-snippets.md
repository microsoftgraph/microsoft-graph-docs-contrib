---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UpdateAudiencePostRequestBody();
$addMembersUpdatableAsset1 = new UpdatableAsset();
$addMembersUpdatableAsset1->set@odatatype('#microsoft.graph.windowsUpdates.azureADDevice');

$addMembersUpdatableAsset1->setId('String (identifier)');


$addMembersArray []= $addMembersUpdatableAsset1;
$requestBody->setAddMembers($addMembersArray);




$graphServiceClient->admin()->windows()->updates()->deploymentAudiencesById('deploymentAudience-id')->windowsUpdatesUpdateAudience()->post($requestBody);


```