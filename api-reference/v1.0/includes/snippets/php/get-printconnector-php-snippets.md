---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->escapedPrint()->connectors()->byPrintConnectorId('printConnector-id')->get()->wait();

```