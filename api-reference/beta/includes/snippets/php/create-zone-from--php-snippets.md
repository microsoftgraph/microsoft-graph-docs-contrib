---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\Zone;
use Microsoft\Graph\Beta\Generated\Models\Security\Environment;
use Microsoft\Graph\Beta\Generated\Models\Security\EnvironmentKind;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Zone();
$requestBody->setDisplayName('Production Zone');
$requestBody->setDescription('Zone for production environments');
$environmentsEnvironment1 = new Environment();
$environmentsEnvironment1->setKind(new EnvironmentKind('awsAccount'));
$environmentsEnvironment1->setId('181994123251');
$environmentsArray []= $environmentsEnvironment1;
$environmentsEnvironment2 = new Environment();
$environmentsEnvironment2->setKind(new EnvironmentKind('awsAccount'));
$environmentsEnvironment2->setId('326438728454');
$environmentsArray []= $environmentsEnvironment2;
$environmentsEnvironment3 = new Environment();
$environmentsEnvironment3->setKind(new EnvironmentKind('azureSubscription'));
$environmentsEnvironment3->setId('/subscriptions/02687862-a843-4846-81f0-efe9ef244daa');
$environmentsArray []= $environmentsEnvironment3;
$environmentsEnvironment4 = new Environment();
$environmentsEnvironment4->setKind(new EnvironmentKind('gcpProject'));
$environmentsEnvironment4->setId('69483221284');
$environmentsArray []= $environmentsEnvironment4;
$requestBody->setEnvironments($environmentsArray);


$result = $graphServiceClient->security()->zones()->post($requestBody)->wait();

```