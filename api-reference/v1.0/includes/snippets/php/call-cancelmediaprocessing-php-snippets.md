---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CancelMediaProcessingPostRequestBody();
$requestBody->setClientContext('clientContext-value');



$requestResult = $graphServiceClient->communications()->callsById('call-id')->microsoftGraphCancelMediaProcessing()->post($requestBody);


```