---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\LocalizedNotificationMessage;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new LocalizedNotificationMessage();
$requestBody->setOdataType('#microsoft.graph.localizedNotificationMessage');
$requestBody->setLocale('Locale value');
$requestBody->setSubject('Subject value');
$requestBody->setMessageTemplate('Message Template value');
$requestBody->setIsDefault(true);

$result = $graphServiceClient->deviceManagement()->notificationMessageTemplates()->byNotificationMessageTemplateId('notificationMessageTemplate-id')->localizedNotificationMessages()->byLocalizedNotificationMessageId('localizedNotificationMessage-id')->patch($requestBody)->wait();

```