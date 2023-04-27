---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ProfileRequestBuilderGetRequestConfiguration();
$queryParameters = ProfileRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["names($select=first,last)","skills($select=displayName)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->me()->profile()->get($requestConfiguration);


```