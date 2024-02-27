---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$additionalData = [
	'bellowscollege_courses' => null,
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->groups()->byGroupId('group-id')->patch($requestBody)->wait();

```