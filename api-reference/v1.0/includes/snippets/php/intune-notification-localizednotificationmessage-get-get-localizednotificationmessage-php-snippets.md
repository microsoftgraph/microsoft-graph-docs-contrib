---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->notificationMessageTemplates()->byNotificationMessageTemplateId('notificationMessageTemplate-id')->localizedNotificationMessages()->byLocalizedNotificationMessageId('localizedNotificationMessage-id')->get()->wait();

```