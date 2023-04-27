---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PlannerRosterMember();
$requestBody->set@odatatype('#microsoft.graph.plannerRosterMember');

$requestBody->setUserId('String');



$result = $graphServiceClient->planner()->rostersById('plannerRoster-id')->members()->post($requestBody);


```