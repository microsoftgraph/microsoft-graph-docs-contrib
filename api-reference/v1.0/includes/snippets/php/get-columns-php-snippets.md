---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new ColumnsRequestBuilderGetRequestConfiguration();
$queryParameters = ColumnsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 5;
$queryParameters->skip = 5;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byItemId('driveItem-id')->workbook()->tables()->byTableId('workbookTable-id')->columns()->get($requestConfiguration);


```