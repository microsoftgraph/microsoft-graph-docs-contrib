---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->groups()->byGroupId('group-id')->owners()->byDirectoryObjectId('directoryObject-id')->ref()->delete()->wait();

```