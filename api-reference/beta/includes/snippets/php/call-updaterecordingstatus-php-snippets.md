---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Communications\Calls\Item\UpdateRecordingStatus\UpdateRecordingStatusPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\RecordingStatus;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateRecordingStatusPostRequestBody();
$requestBody->setClientContext('clientContext-value');
$requestBody->setStatus(new RecordingStatus('notRecording | recording | failed'));

$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->updateRecordingStatus()->post($requestBody)->wait();

```