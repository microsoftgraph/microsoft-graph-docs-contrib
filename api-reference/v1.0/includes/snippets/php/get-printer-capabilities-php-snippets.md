---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PrinterRequestBuilderGetRequestConfiguration();
$queryParameters = PrinterRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","displayName","capabilities"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->print()->printers()->byPrinterId('printer-id')->get($requestConfiguration);


```