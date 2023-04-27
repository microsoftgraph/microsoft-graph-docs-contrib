---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ListItem();
$fields = new FieldValueSet();
$additionalData = [
		'Title' => 'Widget', 
		'Color' => 'Purple', 
		'Weight' => 32,
];
$fields->setAdditionalData($additionalData);



$requestBody->setFields($fields);


$result = $graphServiceClient->sitesById('site-id')->listsById('list-id')->items()->post($requestBody);


```