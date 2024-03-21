---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->escapedPrint()->printers()->byPrinterId('printer-id')->taskTriggers()->byPrintTaskTriggerId('printTaskTrigger-id')->get()->wait();

```