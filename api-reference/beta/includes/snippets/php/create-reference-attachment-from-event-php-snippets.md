---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Attachment();
$requestBody->set@odatatype('#microsoft.graph.referenceAttachment');

$requestBody->setName('Personal pictures');

$additionalData = [
		'sourceUrl' => 'https://contoso.com/personal/mario_contoso_net/Documents/Pics', 
		'providerType' => 'oneDriveConsumer', 
		'permission' => 'Edit', 
		'isFolder' => 'True', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->me()->eventsById('event-id')->attachments()->post($requestBody);


```