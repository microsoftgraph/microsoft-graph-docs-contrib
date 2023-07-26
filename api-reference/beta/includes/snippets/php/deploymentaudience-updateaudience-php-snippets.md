---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateAudiencePostRequestBody();
$addMembersUpdatableAsset1 = new AzureADDevice();
$addMembersUpdatableAsset1->setOdataType('#microsoft.graph.windowsUpdates.azureADDevice');

$addMembersUpdatableAsset1->setId('String (identifier)');


$addMembersArray []= $addMembersUpdatableAsset1;
$requestBody->setAddMembers($addMembersArray);




$graphServiceClient->admin()->windows()->updates()->deploymentAudiences()->byDeploymentAudienceId('deploymentAudience-id')->microsoftGraphWindowsUpdatesUpdateAudience()->post($requestBody);


```