---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AbortPostRequestBody();
$requestBody->setReason('String');

$graphServiceClient->escapedPrint()->printers()->byPrinterId('printer-id')->jobs()->byPrintJobId('printJob-id')->abort()->post($requestBody)->wait();

```