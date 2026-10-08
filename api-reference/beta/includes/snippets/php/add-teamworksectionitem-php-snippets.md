---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Teamwork\Sections\Item\Items\ItemsRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Models\TeamworkSectionItem;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TeamworkSectionItem();
$requestBody->setId('19:d5b2c3a4-e6f7-8901-abcd-ef3456789012@thread.v2');
$requestConfiguration = new ItemsRequestBuilderPostRequestConfiguration();
$headers = [
		'If-Match' => '"1742515200"',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->users()->byUserId('user-id')->teamwork()->sections()->byTeamworkSectionId('teamworkSection-id')->items()->post($requestBody, $requestConfiguration)->wait();

```