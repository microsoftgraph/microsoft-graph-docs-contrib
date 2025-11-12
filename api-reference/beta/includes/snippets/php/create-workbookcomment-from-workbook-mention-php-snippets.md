---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\WorkbookComment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookComment();
$requestBody->setContentType('mention');
$additionalData = [
	'cellAddress' => 'Sheet1!A1',
	'richContent' => '<at id=\"0\">Kate Kristensen</at> - This is my comment.',
	'mentions' => [
			[
				'id' => 0,
				'name' => 'Kate Kristensen',
				'email' => 'kakri@contoso.com',
			],
		],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->comments()->post($requestBody)->wait();

```