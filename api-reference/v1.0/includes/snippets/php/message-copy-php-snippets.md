---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CopyPostRequestBody();
$requestBody->setDestinationId('destinationId-value');

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->copy()->post($requestBody)->wait();

```