---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceAppManagement()->defaultManagedAppProtections()->byDefaultManagedAppProtectionId('defaultManagedAppProtection-id')->delete()->wait();

```