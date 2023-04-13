---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new NamedLocationsRequestBuilderGetRequestConfiguration();

$queryParameters = new NamedLocationsRequestBuilderGetQueryParameters();
$queryParameters->filter = "createdDateTime ge 2019-09-01T00:00:00Z";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identity()->conditionalAccess()->namedLocations()->get($requestConfiguration);


```