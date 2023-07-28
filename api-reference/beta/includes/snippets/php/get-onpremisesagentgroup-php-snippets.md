---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new OnPremisesAgentGroupRequestBuilderGetRequestConfiguration();
$queryParameters = OnPremisesAgentGroupRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["publishedResources","agents"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->agentGroups()->byOnPremisesAgentGroupId('onPremisesAgentGroup-id')->get($requestConfiguration);


```