---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->privilegedAccess()->byPrivilegedAccessId('privilegedAccess-id')->resources()->get()->wait();

```