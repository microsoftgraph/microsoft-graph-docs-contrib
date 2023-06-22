---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Message();
$requestBody->setReceivedDateTime(new DateTime('2016-10-19T10:37:00Z'));

$requestBody->setSentDateTime(new DateTime('2016-10-19T10:37:00Z'));

$requestBody->setHasAttachments(true);

$requestBody->setSubject('subject-value');

$body = new ItemBody();
$body->setContentType(new BodyType('text'));

$body->setContent('content-value');


$requestBody->setBody($body);
$requestBody->setBodyPreview('bodyPreview-value');



$result = $graphServiceClient->me()->mailFoldersById('mailFolder-id')->messages()->post($requestBody);


```