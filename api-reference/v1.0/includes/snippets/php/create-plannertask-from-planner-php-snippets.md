---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PlannerTask();
$requestBody->setPlanId('xqQg5FS2LkCp935s-FIFm2QAFkHM');

$requestBody->setBucketId('hsOf2dhOJkqyYYZEtdzDe2QAIUCR');

$requestBody->setTitle('Update client list');

$assignments = new PlannerAssignments();
$additionalData = [
		'fbab97d0-4932-4511-b675-204639209557' => $assignments = new Fbab97d0-4932-4511-b675-204639209557();
$		assignments->set@odatatype('#microsoft.graph.plannerAssignment');

$		assignments->setOrderHint(' !');


$assignments->setFbab97d0-4932-4511-b675-204639209557($fbab97d0-4932-4511-b675-204639209557);

];
$assignments->setAdditionalData($additionalData);



$requestBody->setAssignments($assignments);


$result = $graphServiceClient->planner()->tasks()->post($requestBody);


```