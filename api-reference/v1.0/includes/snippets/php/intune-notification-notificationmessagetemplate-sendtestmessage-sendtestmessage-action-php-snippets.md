---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->notificationMessageTemplates()->byNotificationMessageTemplateId('notificationMessageTemplate-id')->sendTestMessage()->post()->wait();

```