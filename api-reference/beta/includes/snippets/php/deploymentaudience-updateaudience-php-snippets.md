---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UpdateAudiencePostRequestBody;
use Microsoft\Graph\Generated\Models\UpdatableAsset;
use Microsoft\Graph\Generated\Models\AzureADDevice;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateAudiencePostRequestBody();
$addMembersUpdatableAsset1 = new AzureADDevice();
$addMembersUpdatableAsset1->setOdataType('#microsoft.graph.windowsUpdates.azureADDevice');
$addMembersUpdatableAsset1->setId('String (identifier)');
$addMembersArray []= $addMembersUpdatableAsset1;
$requestBody->setAddMembers($addMembersArray);


$graphServiceClient->admin()->windows()->updates()->deploymentAudiences()->byDeploymentAudienceId('deploymentAudience-id')->microsoftGraphWindowsUpdatesUpdateAudience()->post($requestBody)->wait();

```