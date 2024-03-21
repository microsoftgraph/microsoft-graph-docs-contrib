---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->escapedPrint()->shares()->byPrinterShareId('printerShare-id')->get()->wait();

```