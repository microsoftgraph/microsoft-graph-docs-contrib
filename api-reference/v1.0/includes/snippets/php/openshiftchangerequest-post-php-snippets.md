---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Teams\Item\Schedule\OpenShiftChangeRequests\OpenShiftChangeRequestsRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Generated\Models\OpenShiftChangeRequest;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OpenShiftChangeRequest();
$requestBody->setSenderMessage('Can I take this shift?');
$requestBody->setOpenShiftId('577b75d2-a927-48c0-a5d1-dc984894e7b8');
$requestConfiguration = new OpenShiftChangeRequestsRequestBuilderPostRequestConfiguration();
$headers = [
		'Authorization' => 'Bearer {token}',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->teams()->byTeamId('team-id')->schedule()->openShiftChangeRequests()->post($requestBody, $requestConfiguration)->wait();

```