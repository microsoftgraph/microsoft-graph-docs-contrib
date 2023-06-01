---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new NamedLocation();
$requestBody->set@odatatype('#microsoft.graph.countryNamedLocation');

$requestBody->setDisplayName('Named location with unknown countries and regions');

$additionalData = [
		'countriesAndRegions' => ['US', 'GB', ],
	'includeUnknownCountriesAndRegions' => true,
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identity()->conditionalAccess()->namedLocations()->post($requestBody);


```