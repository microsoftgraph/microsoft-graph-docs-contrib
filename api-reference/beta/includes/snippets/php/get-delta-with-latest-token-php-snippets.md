---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new DeltaRequestBuilderGetRequestConfiguration();
$queryParameters = DeltaRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->token = "latest";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byItemId('driveItem-id')->delta()->get($requestConfiguration);


```