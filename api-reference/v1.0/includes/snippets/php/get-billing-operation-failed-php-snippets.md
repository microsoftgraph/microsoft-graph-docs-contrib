---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->reports()->partners()->billing()->operations()->byOperationId('operation-id')->get()->wait();

```