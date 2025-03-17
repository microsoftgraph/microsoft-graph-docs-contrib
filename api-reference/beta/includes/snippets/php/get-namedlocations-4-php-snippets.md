---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Identity\ConditionalAccess\NamedLocations\NamedLocationsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new NamedLocationsRequestBuilderGetRequestConfiguration();
$queryParameters = NamedLocationsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "microsoft.graph.countryNamedLocation/countriesAndRegions/any(c: c eq 'CA')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->conditionalAccess()->namedLocations()->get($requestConfiguration)->wait();

```