---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\Messages\Item\ReportMessage\ReportMessagePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\ReportAction;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReportMessagePostRequestBody();
$requestBody->setIsMessageMoveRequested(true);
$requestBody->setReportAction(new ReportAction('junk'));

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->reportMessage()->post($requestBody)->wait();

```