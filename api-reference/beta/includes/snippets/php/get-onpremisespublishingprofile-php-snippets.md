---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\OnPremisesPublishingProfiles\Item\OnPremisesPublishingProfileItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new OnPremisesPublishingProfileItemRequestBuilderGetRequestConfiguration();
$queryParameters = OnPremisesPublishingProfileItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["publishedResources","agents","agentGroups"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->get($requestConfiguration)->wait();

```