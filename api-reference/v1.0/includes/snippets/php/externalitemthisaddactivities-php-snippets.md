---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AddActivitiesPostRequestBody();
$activitiesExternalActivity1 = new ExternalActivity();
$activitiesExternalActivity1->setOdataType('#microsoft.graph.externalConnectors.externalActivity');

$activitiesExternalActivity1->setType(new ExternalActivityType('created'));

$activitiesExternalActivity1->setStartDateTime(new \DateTime('2021-04-06T18:04:31.033Z'));

$activitiesExternalActivity1PerformedBy = new Identity();
$activitiesExternalActivity1PerformedBy->setType(new IdentityType('user'));

$activitiesExternalActivity1PerformedBy->setId('1f0c997e-99f7-43f1-8cca-086f8d42be8d');


$activitiesExternalActivity1->setPerformedBy($activitiesExternalActivity1PerformedBy);

$activitiesArray []= $activitiesExternalActivity1;
$requestBody->setActivities($activitiesArray);




$result = $graphServiceClient->external()->connections()->byExternalConnectionId('externalConnection-id')->items()->byExternalItemId('externalItem-id')->microsoftGraphExternalConnectorsAddActivities()->post($requestBody);


```