---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new PrivilegedOperationEventsRequestBuilderGetRequestConfiguration();
$queryParameters = PrivilegedOperationEventsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "(creationDateTime ge 2017-06-25T07:00:00Z) and ";
$queryParameters->count = true;
$queryParameters->orderby = ["creationDateTime desc"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->privilegedOperationEvents()->get($requestConfiguration);


```