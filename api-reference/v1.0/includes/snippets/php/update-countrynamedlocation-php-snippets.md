---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CountryNamedLocation();
$requestBody->setOdataType('#microsoft.graph.countryNamedLocation');
$requestBody->setDisplayName('Updated named location without unknown countries and regions');
$requestBody->setCountriesAndRegions(['CA', 'IN', 	]);
$requestBody->setIncludeUnknownCountriesAndRegions(false);

$result = $graphServiceClient->identity()->conditionalAccess()->namedLocations()->byNamedLocationId('namedLocation-id')->patch($requestBody)->wait();

```