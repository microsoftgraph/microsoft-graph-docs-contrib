---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\SharePointMigrationTask;
use Microsoft\Graph\Beta\Generated\Models\SharePointUserMigrationTaskParameters;
use Microsoft\Graph\Beta\Generated\Models\UserIdentity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SharePointMigrationTask();
$parameters = new SharePointUserMigrationTaskParameters();
$parameters->setOdataType('#microsoft.graph.sharePointUserMigrationTaskParameters');
$parameters->setTargetOrganizationId('78d010af-72cb-412f-8779-18ce9b5f553b');
$parameters->setTargetDataLocationCode(null);
$parametersSourceUserIdentity = new UserIdentity();
$parametersSourceUserIdentity->setId('da157a29-f793-4dd6-9c73-41d2c73c2546');
$parameters->setSourceUserIdentity($parametersSourceUserIdentity);
$parametersTargetUserIdentity = new UserIdentity();
$parametersTargetUserIdentity->setId('cb53ea98-6151-44cc-9c21-098a3c3e3988');
$parameters->setTargetUserIdentity($parametersTargetUserIdentity);
$requestBody->setParameters($parameters);

$result = $graphServiceClient->solutions()->sharePoint()->migrations()->crossOrganizationMigrationTasks()->post($requestBody)->wait();

```