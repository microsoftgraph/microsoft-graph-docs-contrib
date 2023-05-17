---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new User();
$additionalData = [
		'ext55gb1l09_msLearnCourses' => $requestBody = new Ext55gb1l09_msLearnCourses();
$		requestBody->setCourseType('Admin');


$requestBody->setExt55gb1l09_msLearnCourses($ext55gb1l09_msLearnCourses);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->usersById('user-id')->patch($requestBody);


```