---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new OnPremisesPublishingProfileRequestBuilderGetRequestConfiguration();

$queryParameters = new OnPremisesPublishingProfileRequestBuilderGetQueryParameters();
$queryParameters->expand = ["publishedResources","agents","agentGroups"];

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->onPremisesPublishingProfilesById('onPremisesPublishingProfile-id')->get($requestConfiguration);


```