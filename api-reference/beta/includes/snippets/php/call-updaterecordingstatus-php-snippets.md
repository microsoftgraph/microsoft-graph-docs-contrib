---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\UpdateRecordingStatusPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateRecordingStatusPostRequestBody();
$requestBody->setClientContext('clientContext-value');
$requestBody->setStatus(new RecordingStatus('notRecording | recording | failed'));

$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->updateRecordingStatus()->post($requestBody)->wait();

```