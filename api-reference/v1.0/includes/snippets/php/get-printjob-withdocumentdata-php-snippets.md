---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PrintJobItemRequestBuilderGetRequestConfiguration();
$queryParameters = PrintJobItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["documents"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->escapedPrint()->printers()->byPrinterId('printer-id')->jobs()->byPrintJobId('printJob-id')->get($requestConfiguration)->wait();

```