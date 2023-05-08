---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SubscribeToTonePostRequestBody();
$requestBody->setClientContext('fd1c7836-4d84-4e24-b6aa-23188688cc54');



$result = $graphServiceClient->communications()->callsById('call-id')->subscribeToTone()->post($requestBody);


```