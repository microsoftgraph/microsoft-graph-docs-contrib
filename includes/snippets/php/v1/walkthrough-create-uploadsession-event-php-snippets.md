---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CreateUploadSessionPostRequestBody();
$attachmentItem = new AttachmentItem();
$attachmentItem->setAttachmentType(new AttachmentType('file'));
$attachmentItem->setName('flower');
$attachmentItem->setSize(3483322);
$requestBody->setAttachmentItem($attachmentItem);

$result = $graphServiceClient->me()->events()->byEventId('event-id')->attachments()->createUploadSession()->post($requestBody)->wait();

```