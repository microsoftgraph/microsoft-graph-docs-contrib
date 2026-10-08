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
$parameters->setTargetOrganizationHost('https://fabrico-my.sharepoint.com');
$parameters->setValidateOnly(true);
$parametersSourceUserIdentity = new UserIdentity();
$parametersSourceUserIdentity->setUserPrincipalName('source-user@contoso.onmicrosoft.com');
$parameters->setSourceUserIdentity($parametersSourceUserIdentity);
$parametersTargetUserIdentity = new UserIdentity();
$parametersTargetUserIdentity->setUserPrincipalName('target-user@fabrico.onmicrosoft.com');
$parameters->setTargetUserIdentity($parametersTargetUserIdentity);
$requestBody->setParameters($parameters);

$result = $graphServiceClient->solutions()->sharePoint()->migrations()->crossOrganizationMigrationTasks()->post($requestBody)->wait();

```