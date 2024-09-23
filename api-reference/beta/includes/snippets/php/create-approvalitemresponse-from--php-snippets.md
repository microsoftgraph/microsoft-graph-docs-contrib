---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ApprovalItemResponse;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ApprovalItemResponse();
$requestBody->setResponse('Approve');
$requestBody->setComments('Approve this request');

$result = $graphServiceClient->solutions()->approval()->approvalItems()->byApprovalItemId('approvalItem-id')->responses()->post($requestBody)->wait();

```