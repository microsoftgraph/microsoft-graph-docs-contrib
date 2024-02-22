---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityProtection()->riskyUsers()->byRiskyUserId('riskyUser-id')->get()->wait();

```