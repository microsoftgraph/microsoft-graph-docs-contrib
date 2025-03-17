---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->devices()->byDeviceId('device-id')->registeredOwners()->byDirectoryObjectId('directoryObject-id')->ref()->delete()->wait();

```