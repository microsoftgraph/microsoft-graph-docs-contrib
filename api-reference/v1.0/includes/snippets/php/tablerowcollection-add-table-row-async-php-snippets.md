---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new WorkbookTableRow();
$requestBody->setValues([[1,2,3,		],[4,5,6,		],	]);


$requestConfiguration = new RowsRequestBuilderPostRequestConfiguration();
$headers = [
		'Prefer' => 'respond-async',
		'Workbook-Session-Id' => '{Workbook-Session-Id}',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->tables()->byWorkbookTableId('workbookTable-id')->rows()->post($requestBody, $requestConfiguration);


```