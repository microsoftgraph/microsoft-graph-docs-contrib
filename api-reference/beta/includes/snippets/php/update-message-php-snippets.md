---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Message;
use Microsoft\Graph\Generated\Models\ItemBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Message();
$requestBody->setSubject('subject-value');
$body = new ItemBody();
$body->setContentType(new BodyType('text'));
$body->setContent('content-value');
$requestBody->setBody($body);
$requestBody->setInferenceClassification(new InferenceClassificationType('other'));

$result = $graphServiceClient->me()->messages()->byMessageId('message-id')->patch($requestBody)->wait();

```