---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->escapedPrint()->printerShares()->byPrinterShareId('printerShare-id')->allowedUsers()->byUserId('user-id')->ref()->delete()->wait();

```