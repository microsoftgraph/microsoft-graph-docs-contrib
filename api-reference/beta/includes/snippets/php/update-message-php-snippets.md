---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Message();
$requestBody->setSubject('subject-value');

$body = new ItemBody();
$body->setContentType(new BodyType('text'));

$body->setContent('content-value');


$requestBody->setBody($body);
$requestBody->setInferenceClassification(new InferenceClassificationType('other'));



$result = $graphServiceClient->me()->messagesById('message-id')->patch($requestBody);


```