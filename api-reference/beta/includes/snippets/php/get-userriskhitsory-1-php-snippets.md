---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->riskyUsers()->byRiskyUserId('riskyUser-id')->history()->get()->wait();

```