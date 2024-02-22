---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new OnPremisesPublishingProfileItemRequestBuilderGetRequestConfiguration();
$queryParameters = OnPremisesPublishingProfileItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["publishedResources","agents","agentGroups"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->get($requestConfiguration)->wait();

```