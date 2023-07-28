---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileAttachment();
$requestBody->setOdataType('microsoft.graph.fileAttachment');

$requestBody->setName('name-value');

$requestBody->setContentType('contentType-value');

$requestBody->setIsInline(false);

$requestBody->setContentLocation('contentLocation-value');

$requestBody->setContentBytes(base64_decode('base64-contentBytes-value'));



$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->attachments()->post($requestBody);


```