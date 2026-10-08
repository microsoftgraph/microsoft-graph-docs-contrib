---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\SharePointMigrationTask;
use Microsoft\Graph\Beta\Generated\Models\SharePointGroupMigrationTaskParameters;
use Microsoft\Graph\Beta\Generated\Models\GroupIdentity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SharePointMigrationTask();
$parameters = new SharePointGroupMigrationTaskParameters();
$parameters->setOdataType('#microsoft.graph.sharePointGroupMigrationTaskParameters');
$parameters->setTargetOrganizationHost('https://fabrico-my.sharepoint.com');
$parametersSourceGroupIdentity = new GroupIdentity();
$parametersSourceGroupIdentity->setMailNickname('source-group');
$parameters->setSourceGroupIdentity($parametersSourceGroupIdentity);
$parametersTargetGroupIdentity = new GroupIdentity();
$parametersTargetGroupIdentity->setMailNickname('target-group');
$parameters->setTargetGroupIdentity($parametersTargetGroupIdentity);
$requestBody->setParameters($parameters);

$result = $graphServiceClient->solutions()->sharePoint()->migrations()->crossOrganizationMigrationTasks()->post($requestBody)->wait();

```