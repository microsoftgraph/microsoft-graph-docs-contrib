---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Group();
$requestBody->setDisplayName('New Managers March 2017');

$requestBody->setDescription('New Managers training course for March 2017');

$requestBody->setGroupTypes(['Unified', 	]);

$requestBody->setMailEnabled(true);

$requestBody->setMailNickname('newMan201703');

$requestBody->setSecurityEnabled(false);

$additionalData = [
		'graphlearn_courses' => 		[
				'courseId' => '123', 
				'courseName' => 'New Managers', 
				'courseType' => 'Online', 
		],

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->groups()->post($requestBody);


```