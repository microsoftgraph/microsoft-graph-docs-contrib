---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new NamedLocation();
$requestBody->set@odatatype('#microsoft.graph.countryNamedLocation');

$requestBody->setDisplayName('Updated named location without unknown countries and regions');

$additionalData = [
		'countriesAndRegions' => ['CA', 'IN', ],
	'includeUnknownCountriesAndRegions' => false,
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identity()->conditionalAccess()->namedLocationsById('namedLocation-id')->patch($requestBody);


```