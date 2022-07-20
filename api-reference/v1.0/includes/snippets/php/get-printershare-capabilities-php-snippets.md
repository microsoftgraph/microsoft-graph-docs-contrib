---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new PrinterShareRequestBuilderGetRequestConfiguration();

$queryParameters = new PrinterShareRequestBuilderGetQueryParameters();
$queryParameters->select = ["id","displayName","capabilities"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->print()->sharesById('printerShare-id')->get($requestConfiguration);


```