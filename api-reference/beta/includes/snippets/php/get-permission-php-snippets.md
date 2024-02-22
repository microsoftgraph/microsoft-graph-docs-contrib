---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->sites()->bySiteId('site-id')->permissions()->byPermissionId('permission-id')->get()->wait();

```