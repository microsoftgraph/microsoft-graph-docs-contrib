---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Workflow();
$requestBody->setIsEnabled(true);

$requestBody->setIsSchedulingEnabled(true);



$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflowsById('workflow-id')->patch($requestBody);


```