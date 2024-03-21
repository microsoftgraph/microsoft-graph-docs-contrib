---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->externalPartnerSettings()->byCloudPcExternalPartnerSettingId('cloudPcExternalPartnerSetting-id')->get()->wait();

```