---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Attachment();
$requestBody->set@odatatype('#Microsoft.OutlookServices.ItemAttachment');

$requestBody->setName('name-value');

$additionalData = [
		'item' => $requestBody = new Item();
$		requestBody->set@odatatype('microsoft.graph.message');


$requestBody->setItem($item);

];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->me()->eventsById('event-id')->attachments()->post($requestBody);


```