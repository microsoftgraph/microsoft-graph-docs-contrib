---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new OnPremisesAgentItemRequestBuilderGetRequestConfiguration();
$queryParameters = OnPremisesAgentItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["agentGroups"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->agents()->byOnPremisesAgentId('onPremisesAgent-id')->get($requestConfiguration)->wait();

```