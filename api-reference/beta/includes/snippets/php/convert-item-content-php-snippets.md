---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ContentRequestBuilderGetRequestConfiguration();
$queryParameters = ContentRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "{format}";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->content()->get($requestConfiguration);


```