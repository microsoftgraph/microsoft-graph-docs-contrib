---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->devices()->byDeviceId('device-id')->registeredUsers()->byDirectoryObjectId('directoryObject-id')->ref()->delete()->wait();

```