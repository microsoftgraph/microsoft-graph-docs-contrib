---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileAttachment();
$requestBody->setOdataType('#microsoft.graph.fileAttachment');

$requestBody->setName('menu.txt');

$requestBody->setContentBytes(base64_decode('base64bWFjIGFuZCBjaGVlc2UgdG9kYXk='));



$result = $graphServiceClient->me()->events()->byEventId('event-id')->attachments()->post($requestBody);


```