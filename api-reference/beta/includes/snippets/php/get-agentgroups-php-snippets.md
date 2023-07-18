---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AgentGroupsRequestBuilderGetRequestConfiguration();
$queryParameters = AgentGroupsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["agents","publishedResources"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->agentGroups()->get($requestConfiguration);


```