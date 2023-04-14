---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EvaluateRemovalPostRequestBody();
$contentInfo = new ContentInfo();
$contentInfo->set@odatatype('#microsoft.graph.security.contentInfo');

$ContentInfo->setIdentifier(null);

$contentInfo->setState(new ContentState('rest'));

$metadataKeyValuePair1 = new KeyValuePair();
$metadataKeyValuePair1->setName('MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Enabled');

$metadataKeyValuePair1->setValue('True');


$metadataArray []= $metadataKeyValuePair1;
$metadataKeyValuePair2 = new KeyValuePair();
$metadataKeyValuePair2->setName('MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Method');

$metadataKeyValuePair2->setValue('Standard');


$metadataArray []= $metadataKeyValuePair2;
$metadataKeyValuePair3 = new KeyValuePair();
$metadataKeyValuePair3->setName('MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SetDate');

$metadataKeyValuePair3->setValue('1/1/0001 12:00:00 AM');


$metadataArray []= $metadataKeyValuePair3;
$metadataKeyValuePair4 = new KeyValuePair();
$metadataKeyValuePair4->set@odatatype('#microsoft.graph.security.keyValuePair');

$metadataKeyValuePair4->setName('MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_SiteId');

$metadataKeyValuePair4->setValue('cfa4cf1d-a337-4481-aa99-19d8f3d63f7c');


$metadataArray []= $metadataKeyValuePair4;
$metadataKeyValuePair5 = new KeyValuePair();
$metadataKeyValuePair5->set@odatatype('#microsoft.graph.security.keyValuePair');

$metadataKeyValuePair5->setName('MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_Name');

$metadataKeyValuePair5->setValue('LabelScopedToBob_Tests');


$metadataArray []= $metadataKeyValuePair5;
$metadataKeyValuePair6 = new KeyValuePair();
$metadataKeyValuePair6->set@odatatype('#microsoft.graph.security.keyValuePair');

$metadataKeyValuePair6->setName('MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ContentBits');

$metadataKeyValuePair6->setValue('0');


$metadataArray []= $metadataKeyValuePair6;
$metadataKeyValuePair7 = new KeyValuePair();
$metadataKeyValuePair7->set@odatatype('#microsoft.graph.security.keyValuePair');

$metadataKeyValuePair7->setName('MSIP_Label_836ff34f-b604-4a62-a68c-d6be4205d569_ActionId');

$metadataKeyValuePair7->setValue('00000000-0000-0000-0000-000000000000');


$metadataArray []= $metadataKeyValuePair7;
$contentInfo->setMetadata($metadataArray);



$requestBody->setContentInfo($contentInfo);
$downgradeJustification = new DowngradeJustification();
$downgradeJustification->setJustificationMessage('The information has been declassified.');

$downgradeJustification->setIsDowngradeJustified(true);


$requestBody->setDowngradeJustification($downgradeJustification);

$requestConfiguration = new EvaluateRemovalRequestBuilderPostRequestConfiguration();
$headers = [
	'User-Agent' => 'ContosoLOBApp/1.0',
];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->usersById('user-id')->security()->informationProtection()->sensitivityLabels()->securityEvaluateRemoval()->post($requestBody, $requestConfiguration);


```