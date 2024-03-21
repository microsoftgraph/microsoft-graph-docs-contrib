---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AgentsRequestBuilderGetRequestConfiguration();
$queryParameters = AgentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["agentGroups"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->agents()->get($requestConfiguration)->wait();

```