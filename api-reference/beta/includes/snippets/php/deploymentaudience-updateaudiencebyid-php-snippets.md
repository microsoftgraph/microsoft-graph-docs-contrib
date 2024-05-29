---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\Windows\Updates\Deployments\Item\Audience\MicrosoftGraphWindowsUpdatesUpdateAudienceById\UpdateAudienceByIdPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateAudienceByIdPostRequestBody();
$requestBody->setMemberEntityType('String');
$requestBody->setAddMembers(['String', 	]);
$requestBody->setRemoveMembers(['String', 	]);
$requestBody->setAddExclusions(['String', 	]);
$requestBody->setRemoveExclusions(['String', 	]);

$graphServiceClient->admin()->windows()->updates()->deployments()->byDeploymentId('deployment-id')->audience()->microsoftGraphWindowsUpdatesUpdateAudienceById()->post($requestBody)->wait();

```