---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new IncidentsRequestBuilderGetRequestConfiguration();

$queryParameters = new IncidentsRequestBuilderGetQueryParameters();
$queryParameters->expand = ["alerts"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->security()->incidents()->get($requestConfiguration);


```