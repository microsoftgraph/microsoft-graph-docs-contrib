---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Teamwork\Sections\SectionsRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Models\TeamworkSection;
use Microsoft\Graph\Beta\Generated\Models\SectionDisplayIcon;
use Microsoft\Graph\Beta\Generated\Models\SectionSortType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TeamworkSection();
$requestBody->setDisplayName('Project Alpha');
$displayIcon = new SectionDisplayIcon();
$displayIcon->setIconType('🚀');
$requestBody->setDisplayIcon($displayIcon);
$requestBody->setSortType(new SectionSortType('mostRecent'));
$requestConfiguration = new SectionsRequestBuilderPostRequestConfiguration();
$headers = [
		'If-Match' => '"1742515200"',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->users()->byUserId('user-id')->teamwork()->sections()->post($requestBody, $requestConfiguration)->wait();

```