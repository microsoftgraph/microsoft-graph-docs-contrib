---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\FileAttachment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileAttachment();
$requestBody->setOdataType('#microsoft.graph.fileAttachment');
$requestBody->setName('menu.txt');
$requestBody->setContentBytes(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('bWFjIGFuZCBjaGVlc2UgdG9kYXk=')));

$result = $graphServiceClient->me()->outlook()->tasks()->byOutlookTaskId('outlookTask-id')->attachments()->post($requestBody)->wait();

```