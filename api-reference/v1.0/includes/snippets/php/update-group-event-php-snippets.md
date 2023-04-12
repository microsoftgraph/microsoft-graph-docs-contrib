---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Event();
$location = new Location();
$location->setDisplayName('Conf Room 2');


$requestBody->setLocation($location);


$result = $graphServiceClient->groupsById('group-id')->calendar()->eventsById('event-id')->patch($requestBody);


```