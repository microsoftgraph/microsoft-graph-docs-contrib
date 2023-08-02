---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Attachment();
$requestBody->setOdataType('#Microsoft.OutlookServices.FileAttachment');

$requestBody->setName('name-value');

$requestBody->setContentType('contentType-value');

$requestBody->setIsInline(false);

$additionalData = [
		'contentLocation' => 'contentLocation-value', 
		'contentBytes' => 'contentBytes-value', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->attachments()->post($requestBody);


```