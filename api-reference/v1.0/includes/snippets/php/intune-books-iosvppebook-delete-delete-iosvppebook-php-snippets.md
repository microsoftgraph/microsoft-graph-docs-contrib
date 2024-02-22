---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceAppManagement()->managedEBooks()->byManagedEBookId('managedEBook-id')->delete()->wait();

```