---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new NamedLocation();
$requestBody->set@odatatype('#microsoft.graph.ipNamedLocation');

$requestBody->setDisplayName('Untrusted named location with only IPv4 address');

$additionalData = [
		'isTrusted' => false,
		'ipRanges' => $ipRanges1 = new ();
$		ipRanges1->set@odatatype('#microsoft.graph.iPv4CidrRange');

$		ipRanges1->setCidrAddress('6.5.4.3/18');


$ipRangesArray []= $ipRanges1;
$requestBody->setIpRanges($ipRangesArray);


];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identity()->conditionalAccess()->namedLocationsById('namedLocation-id')->patch($requestBody);


```