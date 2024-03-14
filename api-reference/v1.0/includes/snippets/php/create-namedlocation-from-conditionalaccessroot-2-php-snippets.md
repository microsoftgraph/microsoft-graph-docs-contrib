---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CountryNamedLocation();
$requestBody->setOdataType('#microsoft.graph.countryNamedLocation');
$requestBody->setDisplayName('Named location with unknown countries and regions');
$requestBody->setCountriesAndRegions(['US', 'GB', 	]);
$requestBody->setIncludeUnknownCountriesAndRegions(true);

$result = $graphServiceClient->identity()->conditionalAccess()->namedLocations()->post($requestBody)->wait();

```