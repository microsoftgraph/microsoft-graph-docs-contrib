---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new BookingBusinessesRequestBuilderGetRequestConfiguration();

$queryParameters = new BookingBusinessesRequestBuilderGetQueryParameters();
$queryParameters->query = "Adventure";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->bookingBusinesses()->get($requestConfiguration);


```