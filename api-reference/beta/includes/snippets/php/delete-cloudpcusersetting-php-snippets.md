---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->virtualEndpoint()->userSettings()->byCloudPcUserSettingId('cloudPcUserSetting-id')->delete()->wait();

```