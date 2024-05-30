---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\WorkbookCommentReply;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookCommentReply();
$requestBody->setContent('This is my reply to the comment.');
$requestBody->setContentType('plain');

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->comments()->byWorkbookCommentId('workbookComment-id')->replies()->post($requestBody)->wait();

```