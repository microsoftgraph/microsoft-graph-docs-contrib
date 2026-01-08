---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\OnlineMeeting;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OnlineMeeting();
$requestBody->setIsEndToEndEncryptionEnabled(true);

$result = $graphServiceClient->me()->onlineMeetings()->byOnlineMeetingId('onlineMeeting-id')->patch($requestBody)->wait();

```