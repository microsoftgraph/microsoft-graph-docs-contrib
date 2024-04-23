---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->escapedPrint()->shares()->byPrinterShareId('printerShare-id')->allowedGroups()->byGroupId('group-id')->ref()->delete()->wait();

```