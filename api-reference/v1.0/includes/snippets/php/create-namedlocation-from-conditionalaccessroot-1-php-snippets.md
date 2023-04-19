---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new NamedLocation();
$requestBody->set@odatatype('#microsoft.graph.ipNamedLocation');

$requestBody->setDisplayName('Untrusted IP named location');

$additionalData = [
		'isTrusted' => false,
		'ipRanges' => $ipRanges1 = new ();
$		ipRanges1->set@odatatype('#microsoft.graph.iPv4CidrRange');

$		ipRanges1->setCidrAddress('12.34.221.11/22');


$ipRangesArray []= $ipRanges1;
$ipRanges2 = new ();
$		ipRanges2->set@odatatype('#microsoft.graph.iPv6CidrRange');

$		ipRanges2->setCidrAddress('2001:0:9d38:90d6:0:0:0:0/63');


$ipRangesArray []= $ipRanges2;
$requestBody->setIpRanges($ipRangesArray);


];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identity()->conditionalAccess()->namedLocations()->post($requestBody);


```