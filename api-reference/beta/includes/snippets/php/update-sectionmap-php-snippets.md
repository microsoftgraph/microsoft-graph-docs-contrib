---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\SectionMap;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SectionMap();
$requestBody->setPlaceId('67149ec1-4b99-42d4-88a4-d92cd23cb606');
$requestBody->setProperties('{\"id\":\"005eb3b8-c95d-4d35-a8a0-22d6nb4d6003\",\"type\":\"Feature\",\"feature_type\":\"section\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\"properties\":{\"name\":{\"en\":\"Test section update\"},\"restriction\":\"restricted222222\",\"level_id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"address_id\":\"mockAddressId\",\"accessibility\":\"wheelchair222222\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.8888983,37.3295292]},\"places_category\":\"unspecified\"}}');

$result = $graphServiceClient->places()->byPlaceId('place-id')->graphBuilding()->map()->levels()->byLevelMapId('levelMap-id')->sections()->bySectionMapId('sectionMap-id')->patch($requestBody)->wait();

```