---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\EmailNotificationsSetting;
use Microsoft\Graph\Beta\Generated\Models\NotificationEventsType;
use Microsoft\Graph\Beta\Generated\Models\NotificationRecipients;
use Microsoft\Graph\Beta\Generated\Models\NotificationRecipientsType;
use Microsoft\Graph\Beta\Generated\Models\EmailIdentity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EmailNotificationsSetting();
$requestBody->setIsEnabled(true);
$requestBody->setAdditionalEvents(new NotificationEventsType('restoreAndPolicyUpdates'));
$recipients = new NotificationRecipients();
$recipients->setRole(new NotificationRecipientsType('custom'));
$customRecipientsEmailIdentity1 = new EmailIdentity();
$customRecipientsEmailIdentity1->setEmail('amala@contoso.com');
$customRecipientsArray []= $customRecipientsEmailIdentity1;
$customRecipientsEmailIdentity2 = new EmailIdentity();
$customRecipientsEmailIdentity2->setEmail('conrad@contoso.com');
$customRecipientsArray []= $customRecipientsEmailIdentity2;
$customRecipientsEmailIdentity3 = new EmailIdentity();
$customRecipientsEmailIdentity3->setEmail('lothar@contoso.com');
$customRecipientsArray []= $customRecipientsEmailIdentity3;
$recipients->setCustomRecipients($customRecipientsArray);

$requestBody->setRecipients($recipients);

$result = $graphServiceClient->solutions()->backupRestore()->emailNotificationsSetting()->patch($requestBody)->wait();

```