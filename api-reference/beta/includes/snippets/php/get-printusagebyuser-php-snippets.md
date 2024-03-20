---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->reports()->dailyPrintUsageByUser()->byPrintUsageByUserId('printUsageByUser-id')->get()->wait();

```