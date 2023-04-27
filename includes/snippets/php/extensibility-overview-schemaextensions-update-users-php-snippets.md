---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new User();
$additionalData = [
		'extkmpdyld2_graphLearnCourses' => $requestBody = new Extkmpdyld2_graphLearnCourses();
$		requestBody->setCourseType('Instructor-led');

		$requestBody->setCourseId(null);


$requestBody->setExtkmpdyld2_graphLearnCourses($extkmpdyld2_graphLearnCourses);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->usersById('user-id')->patch($requestBody);


```