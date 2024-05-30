---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Message;
use Microsoft\Graph\Beta\Generated\Models\ItemBody;
use Microsoft\Graph\Beta\Generated\Models\BodyType;
use Microsoft\Graph\Beta\Generated\Models\InferenceClassificationType;


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