---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new PrivilegedOperationEventsRequestBuilderGetRequestConfiguration();
$queryParameters = PrivilegedOperationEventsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "requestType eq 'Deactivate'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->privilegedOperationEvents()->get($requestConfiguration);


```