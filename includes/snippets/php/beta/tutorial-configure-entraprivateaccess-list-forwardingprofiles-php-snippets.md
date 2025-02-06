---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\NetworkAccess\ForwardingProfiles\ForwardingProfilesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ForwardingProfilesRequestBuilderGetRequestConfiguration();
$queryParameters = ForwardingProfilesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "trafficForwardingType eq 'private'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->networkAccess()->forwardingProfiles()->get($requestConfiguration)->wait();

```