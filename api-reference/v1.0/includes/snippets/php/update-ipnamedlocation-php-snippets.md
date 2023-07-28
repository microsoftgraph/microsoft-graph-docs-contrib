---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IpNamedLocation();
$requestBody->setOdataType('#microsoft.graph.ipNamedLocation');

$requestBody->setDisplayName('Untrusted named location with only IPv4 address');

$requestBody->setIsTrusted(false);

$ipRangesIpRange1 = new IPv4CidrRange();
$ipRangesIpRange1->setOdataType('#microsoft.graph.iPv4CidrRange');

$ipRangesIpRange1->setCidrAddress('6.5.4.3/18');


$ipRangesArray []= $ipRangesIpRange1;
$requestBody->setIpRanges($ipRangesArray);




$result = $graphServiceClient->identity()->conditionalAccess()->namedLocations()->byNamedLocationId('namedLocation-id')->patch($requestBody);


```