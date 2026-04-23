---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Teamwork\Sections\Item\TeamworkSectionItemRequestBuilderDeleteRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TeamworkSectionItemRequestBuilderDeleteRequestConfiguration();
$headers = [
		'If-Match' => '"1742515200"',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->users()->byUserId('user-id')->teamwork()->sections()->byTeamworkSectionId('teamworkSection-id')->delete($requestConfiguration)->wait();

```