---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Groups(uniqueName='{uniqueName}')\GroupsWithUniqueNameRequestBuilderPatchRequestConfiguration;
use Microsoft\Graph\Generated\Models\Group;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$requestBody->setDescription('Self help community for golf');
$requestBody->setDisplayName('Golf Assist');
$requestBody->setGroupTypes(['Unified', 	]);
$requestBody->setMailEnabled(true);
$requestBody->setMailNickname('golfassist');
$requestBody->setSecurityEnabled(false);
$requestConfiguration = new GroupsWithUniqueNameRequestBuilderPatchRequestConfiguration();
$headers = [
		'Prefer' => 'create-if-missing',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->groupsWithUniqueName('{uniqueName}', )->patch($requestBody, $requestConfiguration)->wait();

```