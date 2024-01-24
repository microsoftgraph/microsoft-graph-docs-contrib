---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RejectPostRequestBody();
$requestBody->setReason(new RejectReason('none'));

$graphServiceClient->communications()->calls()->byCallId('call-id')->reject()->post($requestBody)->wait();

```