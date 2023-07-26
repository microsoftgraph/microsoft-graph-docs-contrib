---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new LocalizedNotificationMessage();
$requestBody->setOdataType('#microsoft.graph.localizedNotificationMessage');

$requestBody->setLocale('Locale value');

$requestBody->setSubject('Subject value');

$requestBody->setMessageTemplate('Message Template value');

$requestBody->setIsDefault(true);



$result = $graphServiceClient->deviceManagement()->notificationMessageTemplates()->byNotificationMessageTemplateId('notificationMessageTemplate-id')->localizedNotificationMessages()->byLocalizedNotificationMessageId('localizedNotificationMessage-id')->patch($requestBody);


```