---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\OnPremisesPublishingProfiles\Item\AgentGroups\AgentGroupsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AgentGroupsRequestBuilderGetRequestConfiguration();
$queryParameters = AgentGroupsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["agents","publishedResources"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->agentGroups()->get($requestConfiguration)->wait();

```