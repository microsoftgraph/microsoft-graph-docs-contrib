---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\OnPremisesPublishingProfiles\Item\PublishedResources\PublishedResourcesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PublishedResourcesRequestBuilderGetRequestConfiguration();
$queryParameters = PublishedResourcesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["agentGroups"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->publishedResources()->get($requestConfiguration)->wait();

```