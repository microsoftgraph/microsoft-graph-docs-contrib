---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new User();
$additionalData = [
	'extkmpdyld2_graphLearnCourses' => [
		'courseType' => 'Instructor-led',
		'courseId' => null,
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->users()->byUserId('user-id')->patch($requestBody)->wait();

```