---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new MailboxSettings();
$automaticRepliesSetting = new AutomaticRepliesSetting();
$automaticRepliesSetting->setStatus(new AutomaticRepliesStatus('scheduled'));

$automaticRepliesSettingScheduledStartDateTime = new DateTimeTimeZone();
$automaticRepliesSettingScheduledStartDateTime->setDateTime('2016-03-20T18:00:00.0000000');

$automaticRepliesSettingScheduledStartDateTime->setTimeZone('UTC');


$automaticRepliesSetting->setScheduledStartDateTime($automaticRepliesSettingScheduledStartDateTime);
$automaticRepliesSettingScheduledEndDateTime = new DateTimeTimeZone();
$automaticRepliesSettingScheduledEndDateTime->setDateTime('2016-03-28T18:00:00.0000000');

$automaticRepliesSettingScheduledEndDateTime->setTimeZone('UTC');


$automaticRepliesSetting->setScheduledEndDateTime($automaticRepliesSettingScheduledEndDateTime);

$requestBody->setAutomaticRepliesSetting($automaticRepliesSetting);
$additionalData = [
		'@odata.context' => 'https://graph.microsoft.com/beta/$metadata#Me/mailboxSettings', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->me()->mailboxSettings()->patch($requestBody);


```