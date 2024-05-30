---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\IdentityGovernance\Workflow;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Workflow();
$requestBody->setDescription('Configure new hire tasks for onboarding employees on their first day');
$requestBody->setDisplayName('Australia Onboard new hire employee');
$requestBody->setIsEnabled(true);
$requestBody->setIsSchedulingEnabled(false);

$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->patch($requestBody)->wait();

```