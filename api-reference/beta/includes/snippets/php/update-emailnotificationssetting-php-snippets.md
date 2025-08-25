---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EmailNotificationsSetting;
use Microsoft\Graph\Beta\Generated\Models\NotificationEventsType;
use Microsoft\Graph\Beta\Generated\Models\NotificationRecipients;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailNotificationsSetting();
$requestBody->setIsEnabled(true);
$requestBody->setAdditionalEvents(new NotificationEventsType('restoreAndPolicyUpdates'));
$recipients = new NotificationRecipients();
$additionalData = [
	'recipients' => [
		'role' => 'custom',
		'customRecipients' => [
				[
					'email' => 'amala@contoso.com',
				],
				[
					'email' => 'conrad@contoso.com',
				],
				[
					'email' => 'lothar@contoso.com',
				],
			],
	],
];
$recipients->setAdditionalData($additionalData);
$requestBody->setRecipients($recipients);

$result = $graphServiceClient->solutions()->backupRestore()->emailNotificationsSetting()->patch($requestBody)->wait();

```