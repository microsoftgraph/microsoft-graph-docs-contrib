---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceAppManagement()->managedAppRegistrations()->byManagedAppRegistrationId('managedAppRegistration-id')->operations()->byManagedAppOperationId('managedAppOperation-id')->delete()->wait();

```