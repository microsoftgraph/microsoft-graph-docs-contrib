---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->notificationMessageTemplates()->byNotificationMessageTemplateId('notificationMessageTemplate-id')->localizedNotificationMessages()->get()->wait();

```