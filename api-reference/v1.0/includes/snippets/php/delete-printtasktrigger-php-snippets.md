---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->escapedPrint()->printers()->byPrinterId('printer-id')->taskTriggers()->byPrintTaskTriggerId('printTaskTrigger-id')->delete()->wait();

```