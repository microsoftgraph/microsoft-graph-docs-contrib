---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AddActivitiesPostRequestBody();
$activitiesExternalActivity1 = new ExternalActivity();
$activitiesExternalActivity1->set@odatatype('#microsoft.graph.externalConnectors.externalActivity');

$activitiesExternalActivity1->setType(new ExternalActivityType('string'));

$activitiesExternalActivity1->setStartDateTime(new DateTime('String (timestamp)'));


$activitiesArray []= $activitiesExternalActivity1;
$requestBody->setActivities($activitiesArray);




$result = $graphServiceClient->connectionsById('externalConnection-id')->itemsById('externalItem-id')->externalConnectorsAddActivities()->post($requestBody);


```