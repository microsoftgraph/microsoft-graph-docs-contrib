---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CountryNamedLocation();
$requestBody->setOdataType('#microsoft.graph.countryNamedLocation');

$requestBody->setDisplayName('Named location with unknown countries and regions');

$requestBody->setCountriesAndRegions(['US', 'GB', 	]);

$requestBody->setIncludeUnknownCountriesAndRegions(true);



$result = $graphServiceClient->identity()->conditionalAccess()->namedLocations()->post($requestBody);


```