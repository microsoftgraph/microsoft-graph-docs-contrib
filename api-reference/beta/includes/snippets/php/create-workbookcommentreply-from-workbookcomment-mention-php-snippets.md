---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WorkbookCommentReply;
use Microsoft\Graph\Beta\Generated\Models\WorkbookCommentMention;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookCommentReply();
$requestBody->setRichContent('<at id=\"0\">Kate Kristensen</at> - Can you take a look?');
$mentionsWorkbookCommentMention1 = new WorkbookCommentMention();
$mentionsWorkbookCommentMention1->setId(0);
$mentionsWorkbookCommentMention1->setName('Kate Kristensen');
$mentionsWorkbookCommentMention1->setEmail('kakri@contoso.com');
$mentionsArray []= $mentionsWorkbookCommentMention1;
$requestBody->setMentions($mentionsArray);

$requestBody->setContentType('mention');

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->comments()->byWorkbookCommentId('workbookComment-id')->replies()->post($requestBody)->wait();

```