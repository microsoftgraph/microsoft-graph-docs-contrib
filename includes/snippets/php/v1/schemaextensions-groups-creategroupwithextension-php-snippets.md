---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Group;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$requestBody->setDisplayName('New Managers March 2024');
$requestBody->setDescription('New Managers training course for March 2024');
$requestBody->setGroupTypes(['Unified', 	]);
$requestBody->setMailEnabled(true);
$requestBody->setMailNickname('newMan202403');
$requestBody->setSecurityEnabled(false);
$additionalData = [
	'bellowscollege_courses' => [
		'courseId' => '123',
		'courseName' => 'New Managers',
		'courseType' => 'Online',
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->groups()->post($requestBody)->wait();

```