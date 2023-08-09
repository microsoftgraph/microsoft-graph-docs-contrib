---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VlookupPostRequestBody();
$requestBody->setLookupValue('pear');

$tableArray = new Json();
$additionalData = [
		'Address' => 'Sheet1!B2:C7', 
];
$tableArray->setAdditionalData($additionalData);



$requestBody->setTableArray($tableArray);
$requestBody->setColIndexNum(2);

$requestBody->setRangeLookup(false);


$requestConfiguration = new VlookupRequestBuilderPostRequestConfiguration();
$headers = [
		'workbook-session-id' => '{session-id}',
	];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->drives()->byDriveId('drive-id')->items()->byDriveItemId('driveItem-id')->workbook()->functions()->vlookup()->post($requestBody, $requestConfiguration);


```