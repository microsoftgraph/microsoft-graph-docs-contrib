---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Application;
use Microsoft\Graph\Beta\Generated\Models\UnrestrictedAudience;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Application();
$requestBody->setSignInAudience('AzureADMyOrg');
$signInAudienceRestrictions = new UnrestrictedAudience();
$signInAudienceRestrictions->setOdataType('#microsoft.graph.unrestrictedAudience');
$requestBody->setSignInAudienceRestrictions($signInAudienceRestrictions);

$result = $graphServiceClient->applications()->byApplicationId('application-id')->patch($requestBody)->wait();

```