---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->me()->settings()->windows()->byWindowsSettingId('windowsSetting-id')->instances()->get()->wait();

```