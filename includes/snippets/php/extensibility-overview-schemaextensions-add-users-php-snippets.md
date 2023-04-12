---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

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
		'extkmpdyld2_graphLearnCourses' => $requestBody = new Extkmpdyld2_graphLearnCourses();
		$requestBody->setCourseId(100);

$		requestBody->setCourseName('Explore Microsoft Graph');

$		requestBody->setCourseType('Online');


$requestBody->setExtkmpdyld2_graphLearnCourses($extkmpdyld2_graphLearnCourses);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->users()->post($requestBody);


```