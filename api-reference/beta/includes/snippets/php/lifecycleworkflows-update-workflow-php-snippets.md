---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Workflow();
$requestBody->setDescription('Configure new hire tasks for onboarding employees on their first day');

$requestBody->setDisplayName('Australia Onboard new hire employee');

$requestBody->setIsEnabled(true);

$requestBody->setIsSchedulingEnabled(false);



$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflowsById('workflow-id')->patch($requestBody);


```