---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Place();
$requestBody->set@odatatype('microsoft.graph.room');

$additionalData = [
		'nickname' => 'Conf Room', 
		'building' => '1', 
		'label' => '100', 
		'capacity' => 50,
		'isWheelChairAccessible' => false,
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->placesById('place-id')->patch($requestBody);


```