---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new PrintJobRequestBuilderGetRequestConfiguration();
$queryParameters = PrintJobRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["documents"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->print()->printers()->byPrinterId('printer-id')->jobs()->byJobId('printJob-id')->get($requestConfiguration);


```