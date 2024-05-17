---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\LifecycleWorkflows\DeletedItems\Workflows\WorkflowsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new WorkflowsRequestBuilderGetRequestConfiguration();
$queryParameters = WorkflowsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","category","displayName","description","version"];
$queryParameters->filter = "category eq 'leaver'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->deletedItems()->workflows()->get($requestConfiguration)->wait();

```