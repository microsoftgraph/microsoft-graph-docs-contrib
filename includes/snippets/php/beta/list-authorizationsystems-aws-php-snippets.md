---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->external()->authorizationSystems()->byAuthorizationSystemId('authorizationSystem-id')->get()->wait();

```