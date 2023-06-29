---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new NamedLocationsRequestBuilderGetRequestConfiguration();
$queryParameters = NamedLocationsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "isof('microsoft.graph.ipNamedLocation')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->conditionalAccess()->namedLocations()->get($requestConfiguration);


```