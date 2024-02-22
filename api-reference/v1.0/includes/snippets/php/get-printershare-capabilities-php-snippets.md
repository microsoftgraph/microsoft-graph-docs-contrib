---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PrinterShareItemRequestBuilderGetRequestConfiguration();
$queryParameters = PrinterShareItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","displayName","capabilities"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->escapedPrint()->shares()->byPrinterShareId('printerShare-id')->get($requestConfiguration)->wait();

```