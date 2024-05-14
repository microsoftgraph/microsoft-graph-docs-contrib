---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CountryNamedLocation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CountryNamedLocation();
$requestBody->setOdataType('#microsoft.graph.countryNamedLocation');
$requestBody->setDisplayName('Named location with unknown countries and regions');
$requestBody->setCountriesAndRegions(['US', 'GB', 	]);
$requestBody->setIncludeUnknownCountriesAndRegions(true);

$result = $graphServiceClient->identity()->conditionalAccess()->namedLocations()->post($requestBody)->wait();

```