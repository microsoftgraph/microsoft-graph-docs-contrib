---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new User();
$requestBody->setAccountEnabled(true);

$requestBody->setDisplayName('Adele Vance');

$requestBody->setMailNickname('AdeleV');

$requestBody->setUserPrincipalName('AdeleV@m365x72712789.onmicrosoft.com');

$passwordProfile = new PasswordProfile();
$passwordProfile->setForceChangePasswordNextSignIn(false);

$passwordProfile->setPassword('xWwvJ]6NMw+bWH-d');


$requestBody->setPasswordProfile($passwordProfile);
$additionalData = [
		'extkmpdyld2_graphLearnCourses' => 		[
				'courseId' => 100,
				'courseName' => 'Explore Microsoft Graph', 
				'courseType' => 'Online', 
		],

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->users()->post($requestBody);


```