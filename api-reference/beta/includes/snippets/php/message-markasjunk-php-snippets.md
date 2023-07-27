---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MarkAsJunkPostRequestBody();
$requestBody->setMoveToJunk(true);



$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->markAsJunk()->post($requestBody);


```