---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Teamwork\Sections\Item\TeamworkSectionItemRequestBuilderPatchRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Models\TeamworkSection;
use Microsoft\Graph\Beta\Generated\Models\SectionSortType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TeamworkSection();
$requestBody->setSortType(new SectionSortType('unreadThenMostRecent'));
$requestConfiguration = new TeamworkSectionItemRequestBuilderPatchRequestConfiguration();
$headers = [
		'If-Match' => '"1742515210"',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->users()->byUserId('user-id')->teamwork()->sections()->byTeamworkSectionId('teamworkSection-id')->patch($requestBody, $requestConfiguration)->wait();

```