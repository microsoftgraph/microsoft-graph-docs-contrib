---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\User;
use Microsoft\Graph\Generated\Models\PasswordProfile;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new User();
$requestBody->setAccountEnabled(true);
$requestBody->setDisplayName('Adele Vance');
$requestBody->setMailNickname('AdeleV');
$requestBody->setUserPrincipalName('AdeleV@contoso.com');
$passwordProfile = new PasswordProfile();
$passwordProfile->setForceChangePasswordNextSignIn(false);
$passwordProfile->setPassword('xWwvJ]6NMw+bWH-d');
$requestBody->setPasswordProfile($passwordProfile);
$additionalData = [
	'extkmpdyld2_graphLearnCourses' => [
		'courseId' => 100,
		'courseName' => 'Explore Microsoft Graph',
		'courseType' => 'Online',
	],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->users()->post($requestBody)->wait();

```