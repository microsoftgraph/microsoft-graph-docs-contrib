---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PlannerTask;
use Microsoft\Graph\Beta\Generated\Models\PlannerAssignments;
use Microsoft\Graph\Beta\Generated\Models\PlannerAssignment;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerTask();
$requestBody->setPlanId('xqQg5FS2LkCp935s-FIFm2QAFkHM');
$requestBody->setBucketId('hsOf2dhOJkqyYYZEtdzDe2QAIUCR');
$requestBody->setTitle('Update client list');
$assignments = new PlannerAssignments();
$additionalData = [
	'fbab97d0-4932-4511-b675-204639209557' => [
		'@odata.type' => '#microsoft.graph.plannerAssignment',
		'orderHint' => ' !',
	],
];
$assignments->setAdditionalData($additionalData);
$requestBody->setAssignments($assignments);

$result = $graphServiceClient->planner()->tasks()->post($requestBody)->wait();

```