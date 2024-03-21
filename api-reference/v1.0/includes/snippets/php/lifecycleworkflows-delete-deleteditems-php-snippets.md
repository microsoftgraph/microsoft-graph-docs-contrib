---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identityGovernance()->lifecycleWorkflows()->deletedItems()->workflows()->byWorkflowId('workflow-id')->delete()->wait();

```