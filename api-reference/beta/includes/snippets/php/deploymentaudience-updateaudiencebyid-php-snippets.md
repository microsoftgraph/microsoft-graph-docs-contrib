---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UpdateAudienceByIdPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateAudienceByIdPostRequestBody();
$requestBody->setMemberEntityType('String');
$requestBody->setAddMembers(['String', 	]);
$requestBody->setRemoveMembers(['String', 	]);
$requestBody->setAddExclusions(['String', 	]);
$requestBody->setRemoveExclusions(['String', 	]);

$graphServiceClient->admin()->windows()->updates()->deployments()->byDeploymentId('deployment-id')->audience()->microsoftGraphWindowsUpdatesUpdateAudienceById()->post($requestBody)->wait();

```