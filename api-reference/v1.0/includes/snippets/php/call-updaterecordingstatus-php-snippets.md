---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new UpdateRecordingStatusPostRequestBody();
$requestBody->setClientContext('clientContext-value');

$requestBody->setStatus(new RecordingStatus('notrecording | recording | failed'));



$result = $graphServiceClient->communications()->callsById('call-id')->updateRecordingStatus()->post($requestBody);


```