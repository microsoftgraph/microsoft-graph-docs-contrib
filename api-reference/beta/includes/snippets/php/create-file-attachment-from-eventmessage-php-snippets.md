---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Attachment;


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

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->attachments()->post($requestBody)->wait();

```