---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\FileAttachment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileAttachment();
$requestBody->setOdataType('#microsoft.graph.fileAttachment');
$requestBody->setName('smile');
$requestBody->setContentBytes(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('R0lGODdhEAYEAA7')));

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->attachments()->post($requestBody)->wait();

```