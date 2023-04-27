---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UnmutePostRequestBody();
$requestBody->setClientContext('clientContext-value');



$result = $graphServiceClient->communications()->callsById('call-id')->unmute()->post($requestBody);


```