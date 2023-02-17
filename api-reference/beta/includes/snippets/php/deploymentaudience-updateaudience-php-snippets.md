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


$removeMembersUpdatableAsset1 = new UpdatableAsset();
$removeMembersUpdatableAsset1->set@odatatype('#microsoft.graph.windowsUpdates.azureADDevice');

$removeMembersUpdatableAsset1->setId('String (identifier)');


$removeMembersArray []= $removeMembersUpdatableAsset1;
$requestBody->setRemoveMembers($removeMembersArray);


$addExclusionsUpdatableAsset1 = new UpdatableAsset();
$addExclusionsUpdatableAsset1->set@odatatype('#microsoft.graph.windowsUpdates.azureADDevice');

$addExclusionsUpdatableAsset1->setId('String (identifier)');


$addExclusionsArray []= $addExclusionsUpdatableAsset1;
$requestBody->setAddExclusions($addExclusionsArray);


$removeExclusionsUpdatableAsset1 = new UpdatableAsset();
$removeExclusionsUpdatableAsset1->set@odatatype('#microsoft.graph.windowsUpdates.azureADDevice');

$removeExclusionsUpdatableAsset1->setId('String (identifier)');


$removeExclusionsArray []= $removeExclusionsUpdatableAsset1;
$requestBody->setRemoveExclusions($removeExclusionsArray);




$graphServiceClient->admin()->windows()->updates()->deploymentsById('deployment-id')->audience()->updateAudience()->post($requestBody);


```