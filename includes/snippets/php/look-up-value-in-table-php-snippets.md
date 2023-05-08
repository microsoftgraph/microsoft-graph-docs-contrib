---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

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


$result = $graphServiceClient->drivesById('drive-id')->itemsById('driveItem-id')->workbook()->functions()->vlookup()->post($requestBody, $requestConfiguration);


```