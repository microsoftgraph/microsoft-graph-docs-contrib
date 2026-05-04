---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Teamwork\Sections\Item\Items\Item\TeamworkSectionItemItemRequestBuilderDeleteRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TeamworkSectionItemItemRequestBuilderDeleteRequestConfiguration();
$headers = [
		'If-Match' => '"1742515200"',
	];
$requestConfiguration->headers = $headers;


$graphServiceClient->users()->byUserId('user-id')->teamwork()->sections()->byTeamworkSectionId('teamworkSection-id')->items()->byTeamworkSectionItemId('teamworkSectionItem-id')->delete($requestConfiguration)->wait();

```