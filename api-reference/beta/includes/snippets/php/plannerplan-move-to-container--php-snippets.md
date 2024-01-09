---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
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