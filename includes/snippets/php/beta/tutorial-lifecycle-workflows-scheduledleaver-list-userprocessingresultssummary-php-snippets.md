---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->userProcessingResults()->microsoftGraphIdentityGovernanceSummaryWithStartDateTimeWithEndDateTime(new \DateTime('{endDateTime}'),new \DateTime('{startDateTime}'))->get()->wait();

```