---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Planner\Plans\Item\MoveToContainer\MoveToContainerRequestBuilderPostRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Planner\Plans\Item\MoveToContainer\MoveToContainerPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\PlannerPlanContainer;
use Microsoft\Graph\Beta\Generated\Models\PlannerContainerType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MoveToContainerPostRequestBody();
$container = new PlannerPlanContainer();
$container->setContainerId('groupId');
$container->setType(new PlannerContainerType('group'));
$requestBody->setContainer($container);
$requestConfiguration = new MoveToContainerRequestBuilderPostRequestConfiguration();
$headers = [
		'If-Match' => '"string"',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->planner()->plans()->byPlannerPlanId('plannerPlan-id')->moveToContainer()->post($requestBody, $requestConfiguration)->wait();

```