---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FileAttachment();
$requestBody->setOdataType('#microsoft.graph.fileAttachment');
$requestBody->setName('menu.txt');
$requestBody->setContentBytes(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('bWFjIGFuZCBjaGVlc2UgdG9kYXk=')));

$result = $graphServiceClient->me()->events()->byEventId('event-id')->attachments()->post($requestBody)->wait();

```