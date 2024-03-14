---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->directoryRoles()->byDirectoryRoleId('directoryRole-id')->scopedMembers()->get()->wait();

```