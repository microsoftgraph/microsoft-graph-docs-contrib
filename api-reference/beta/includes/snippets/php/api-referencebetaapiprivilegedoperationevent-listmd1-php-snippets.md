---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new PrivilegedOperationEventsRequestBuilderGetRequestConfiguration();

$queryParameters = new PrivilegedOperationEventsRequestBuilderGetQueryParameters();
$queryParameters->filter = "requestType eq 'Activate'";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->privilegedOperationEvents()->get($requestConfiguration);


```