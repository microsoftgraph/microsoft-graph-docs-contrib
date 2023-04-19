---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CreateUploadSessionPostRequestBody();
$attachmentItem = new AttachmentItem();
$attachmentItem->setAttachmentType(new AttachmentType('file'));

$attachmentItem->setName('flower');

$attachmentItem->setSize(3483322);


$requestBody->setAttachmentItem($attachmentItem);


$result = $graphServiceClient->me()->eventsById('event-id')->attachments()->createUploadSession()->post($requestBody);


```