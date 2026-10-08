---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Teamwork\Sections\Item\Items\Item\Move\MoveRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Users\Item\Teamwork\Sections\Item\Items\Item\Move\MovePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MovePostRequestBody();
$requestBody->setTargetSectionId('c3d4e5f6-a7b8-9012-cdef-123456789012');
$requestConfiguration = new MoveRequestBuilderPostRequestConfiguration();
$headers = [
		'If-Match' => '"1742515200"',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->users()->byUserId('user-id')->teamwork()->sections()->byTeamworkSectionId('teamworkSection-id')->items()->byTeamworkSectionItemId('teamworkSectionItem-id')->move()->post($requestBody, $requestConfiguration)->wait();

```