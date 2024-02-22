---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->applications()->byApplicationId('application-id')->owners()->byDirectoryObjectId('directoryObject-id')->ref()->delete()->wait();

```