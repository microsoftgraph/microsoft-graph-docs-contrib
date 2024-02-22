---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->directory()->deletedItems()->byDirectoryObjectId('directoryObject-id')->delete()->wait();

```