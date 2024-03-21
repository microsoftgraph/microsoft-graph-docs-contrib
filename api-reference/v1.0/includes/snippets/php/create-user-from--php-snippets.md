---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/v1.0/users/{userId}');

$graphServiceClient->escapedPrint()->shares()->byPrinterShareId('printerShare-id')->allowedUsers()->ref()->post($requestBody)->wait();

```