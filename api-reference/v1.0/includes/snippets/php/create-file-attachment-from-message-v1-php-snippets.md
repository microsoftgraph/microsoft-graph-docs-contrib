---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileAttachment();
$requestBody->setOdataType('#microsoft.graph.fileAttachment');

$requestBody->setName('smile');

$requestBody->setContentBytes(base64_decode('R0lGODdhEAYEAA7'));



$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->attachments()->post($requestBody);


```