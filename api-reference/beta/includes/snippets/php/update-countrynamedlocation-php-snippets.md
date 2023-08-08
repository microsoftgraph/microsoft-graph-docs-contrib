---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CountryNamedLocation();
$requestBody->setOdataType('#microsoft.graph.countryNamedLocation');

$requestBody->setDisplayName('Updated named location without unknown countries and regions');

$requestBody->setCountriesAndRegions(['CA', 'IN', 	]);

$requestBody->setIncludeUnknownCountriesAndRegions(false);



$result = $graphServiceClient->identity()->conditionalAccess()->namedLocations()->byNamedLocationId('namedLocation-id')->patch($requestBody);


```