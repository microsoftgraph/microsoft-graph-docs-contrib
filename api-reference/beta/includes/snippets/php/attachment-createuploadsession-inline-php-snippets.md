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

$attachmentItem->setName('scenary');

$attachmentItem->setSize(7208534);

$attachmentItem->setIsInline(true);

$attachmentItem->setContentId('my_inline_picture');


$requestBody->setAttachmentItem($attachmentItem);


$result = $graphServiceClient->me()->messagesById('message-id')->attachments()->createUploadSession()->post($requestBody);


```