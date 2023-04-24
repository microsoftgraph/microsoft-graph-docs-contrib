---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ContentRequestBuilderGetRequestConfiguration();
$queryParameters = ContentRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "{format}";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->content()->get($requestConfiguration);


```