---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\OnPremisesPublishingProfiles\Item\PublishedResources\Item\PublishedResourceItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new PublishedResourceItemRequestBuilderGetRequestConfiguration();
$queryParameters = PublishedResourceItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["agentGroups"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->publishedResources()->byPublishedResourceId('publishedResource-id')->get($requestConfiguration)->wait();

```