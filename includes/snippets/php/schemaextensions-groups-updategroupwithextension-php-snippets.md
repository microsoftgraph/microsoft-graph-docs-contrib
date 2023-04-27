---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Group();
$additionalData = [
		'graphlearn_courses' => $requestBody = new Graphlearn_courses();
$		requestBody->setCourseId('123');

$		requestBody->setCourseName('New Managers');

$		requestBody->setCourseType('Online');


$requestBody->setGraphlearn_courses($graphlearn_courses);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->groupsById('group-id')->patch($requestBody);


```