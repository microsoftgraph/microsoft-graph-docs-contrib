---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Print\Printers\Item\PrinterItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PrinterItemRequestBuilderGetRequestConfiguration();
$queryParameters = PrinterItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","displayName","capabilities"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->escapedPrint()->printers()->byPrinterId('printer-id')->get($requestConfiguration)->wait();

```