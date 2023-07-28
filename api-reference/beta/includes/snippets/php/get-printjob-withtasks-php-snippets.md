---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PrintJobRequestBuilderGetRequestConfiguration();
$queryParameters = PrintJobRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["tasks"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->print()->printers()->byPrinterId('printer-id')->jobs()->byPrintJobId('printJob-id')->get($requestConfiguration);


```