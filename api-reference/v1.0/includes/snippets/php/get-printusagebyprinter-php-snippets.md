---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->reports()->dailyPrintUsageByPrinter()->byPrintUsageByPrinterId('printUsageByPrinter-id')->get()->wait();

```