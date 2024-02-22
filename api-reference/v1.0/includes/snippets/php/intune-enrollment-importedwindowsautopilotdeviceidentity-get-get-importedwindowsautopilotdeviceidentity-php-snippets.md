---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->importedWindowsAutopilotDeviceIdentities()->byImportedWindowsAutopilotDeviceIdentityId('importedWindowsAutopilotDeviceIdentity-id')->get()->wait();

```