---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->windowsAutopilotDeviceIdentities()->byWindowsAutopilotDeviceIdentityId('windowsAutopilotDeviceIdentity-id')->get()->wait();

```