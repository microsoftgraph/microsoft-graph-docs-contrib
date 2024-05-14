---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ReplyAllPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReplyAllPostRequestBody();
$requestBody->setComment('comment-value');

$graphServiceClient->me()->messages()->byMessageId('message-id')->replyAll()->post($requestBody)->wait();

```