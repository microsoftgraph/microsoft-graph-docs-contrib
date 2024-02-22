---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceUpdate();
$requestBody->setOdataId('https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationproxy/connectorGroups/{id}');

$graphServiceClient->applications()->byApplicationId('application-id')->connectorGroup()->ref()->put($requestBody)->wait();

```