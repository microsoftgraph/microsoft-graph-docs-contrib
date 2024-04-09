---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Workflow;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Workflow();
$requestBody->setDescription('Configure new hire tasks for onboarding employees on their first day');
$requestBody->setDisplayName('Australia Onboard new hire employee');
$requestBody->setIsEnabled(true);
$requestBody->setIsSchedulingEnabled(false);

$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->patch($requestBody)->wait();

```