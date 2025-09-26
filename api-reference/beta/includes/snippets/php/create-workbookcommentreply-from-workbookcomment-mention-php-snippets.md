---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WorkbookCommentReply;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookCommentReply();
$requestBody->setContentType('mention');
$additionalData = [
	'richContent' => '<at id=\"0\">Kate Kristensen</at> - Can you take a look?',
	'mentions' => [
			[
				'id' => 0,
				'name' => 'Kate Kristensen',
				'email' => 'kakri@contoso.com',
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->comments()->byWorkbookCommentId('workbookComment-id')->replies()->post($requestBody)->wait();

```