---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Communications\Calls\Item\Reject\RejectPostRequestBody;
use Microsoft\Graph\Generated\Models\RejectReason;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RejectPostRequestBody();
$requestBody->setReason(new RejectReason('none'));

$graphServiceClient->communications()->calls()->byCallId('call-id')->reject()->post($requestBody)->wait();

```