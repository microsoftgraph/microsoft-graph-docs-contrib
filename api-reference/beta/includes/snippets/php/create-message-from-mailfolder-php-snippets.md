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
$requestBody->setReceivedDateTime(new \DateTime('2016-10-19T10:37:00Z'));
$requestBody->setSentDateTime(new \DateTime('2016-10-19T10:37:00Z'));
$requestBody->setHasAttachments(true);
$requestBody->setSubject('subject-value');
$body = new ItemBody();
$body->setContentType(new BodyType('text'));
$body->setContent('content-value');
$requestBody->setBody($body);
$requestBody->setBodyPreview('bodyPreview-value');

$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->messages()->post($requestBody)->wait();

```