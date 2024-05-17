---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CreateUploadSessionPostRequestBody;
use Microsoft\Graph\Generated\Models\AttachmentInfo;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CreateUploadSessionPostRequestBody();
$attachmentInfo = new AttachmentInfo();
$attachmentInfo->setAttachmentType(new AttachmentType('file'));
$attachmentInfo->setName('flower');
$attachmentInfo->setSize(3483322);
$requestBody->setAttachmentInfo($attachmentInfo);

$result = $graphServiceClient->me()->todo()->lists()->byTodoTaskListId('todoTaskList-id')->tasks()->byTodoTaskId('todoTask-id')->attachments()->createUploadSession()->post($requestBody)->wait();

```