---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->escapedPrint()->shares()->byPrinterShareId('printerShare-id')->allowedUsers()->byUserId('user-id')->ref()->delete()->wait();

```