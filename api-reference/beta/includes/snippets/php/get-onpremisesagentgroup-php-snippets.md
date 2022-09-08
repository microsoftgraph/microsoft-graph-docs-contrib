---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new OnPremisesAgentGroupRequestBuilderGetRequestConfiguration();

$queryParameters = new OnPremisesAgentGroupRequestBuilderGetQueryParameters();
$queryParameters->expand = ["publishedResources","agents"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->onPremisesPublishingProfilesById('onPremisesPublishingProfile-id')->agentGroupsById('onPremisesAgentGroup-id')->get($requestConfiguration);


```