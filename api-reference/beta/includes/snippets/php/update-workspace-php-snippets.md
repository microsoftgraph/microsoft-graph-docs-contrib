---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Workspace();
$requestBody->setOdataType('microsoft.graph.workspace');

$requestBody->setNickname('Conf Room');

$requestBody->setBuilding('1');

$requestBody->setLabel('100');

$requestBody->setCapacity(50);

$requestBody->setIsWheelChairAccessible(false);



$result = $graphServiceClient->places()->byPlaceId('place-id')->patch($requestBody);


```