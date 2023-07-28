---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateRecordingStatusPostRequestBody();
$requestBody->setClientContext('clientContext-value');

$requestBody->setStatus(new RecordingStatus('notRecording | recording | failed'));



$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->updateRecordingStatus()->post($requestBody);


```