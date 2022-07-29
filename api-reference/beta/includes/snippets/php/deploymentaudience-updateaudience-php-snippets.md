---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UpdateAudiencePostRequestBody();
$addMembers1 = new ();
$additionalData = [
'@odata.type' => '#microsoft.graph.windowsUpdates.azureADDevice', 
'id' => 'String (identifier)', 
];
$addMembers1->setAdditionalData($additionalData);



$addMembersArray []= $addMembers1;
$requestBody->setAddMembers($addMembersArray);


$removeMembers1 = new ();
$additionalData = [
'@odata.type' => '#microsoft.graph.windowsUpdates.azureADDevice', 
'id' => 'String (identifier)', 
];
$removeMembers1->setAdditionalData($additionalData);



$removeMembersArray []= $removeMembers1;
$requestBody->setRemoveMembers($removeMembersArray);


$addExclusions1 = new ();
$additionalData = [
'@odata.type' => '#microsoft.graph.windowsUpdates.azureADDevice', 
'id' => 'String (identifier)', 
];
$addExclusions1->setAdditionalData($additionalData);



$addExclusionsArray []= $addExclusions1;
$requestBody->setAddExclusions($addExclusionsArray);


$removeExclusions1 = new ();
$additionalData = [
'@odata.type' => '#microsoft.graph.windowsUpdates.azureADDevice', 
'id' => 'String (identifier)', 
];
$removeExclusions1->setAdditionalData($additionalData);



$removeExclusionsArray []= $removeExclusions1;
$requestBody->setRemoveExclusions($removeExclusionsArray);




$graphServiceClient->admin()->windows()->updates()->deploymentsById('deployment-id')->audience()->updateAudience()->post($requestBody);


```