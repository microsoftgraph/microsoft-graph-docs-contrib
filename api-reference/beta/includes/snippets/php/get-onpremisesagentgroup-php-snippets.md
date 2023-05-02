---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new OnPremisesAgentGroupRequestBuilderGetRequestConfiguration();
$queryParameters = OnPremisesAgentGroupRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["publishedResources","agents"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->onPremisesPublishingProfilesById('onPremisesPublishingProfile-id')->agentGroupsById('onPremisesAgentGroup-id')->get($requestConfiguration);


```