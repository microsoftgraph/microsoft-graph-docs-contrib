---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->places()->byPlaceId('place-id')->graphBuilding()->map()->levels()->byLevelMapId('levelMap-id')->sections()->get()->wait();

```