---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new OnPremisesAgentGroupItemRequestBuilderGetRequestConfiguration();
$queryParameters = OnPremisesAgentGroupItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["publishedResources","agents"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->agentGroups()->byOnPremisesAgentGroupId('onPremisesAgentGroup-id')->get($requestConfiguration)->wait();

```