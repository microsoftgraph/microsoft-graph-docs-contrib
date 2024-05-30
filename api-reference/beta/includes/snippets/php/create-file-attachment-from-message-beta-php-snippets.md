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
$requestBody->setName('smile');
$requestBody->setContentBytes(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('a0b1c76de9f7=')));

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->attachments()->post($requestBody)->wait();

```