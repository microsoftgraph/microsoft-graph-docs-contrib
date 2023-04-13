---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AgentGroupsRequestBuilderGetRequestConfiguration();

$queryParameters = new AgentGroupsRequestBuilderGetQueryParameters();
$queryParameters->expand = ["agents","publishedResources"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->onPremisesPublishingProfilesById('onPremisesPublishingProfile-id')->agentGroups()->get($requestConfiguration);


```