---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IpNamedLocation();
$requestBody->setOdataType('#microsoft.graph.ipNamedLocation');

$requestBody->setDisplayName('Untrusted IP named location');

$requestBody->setIsTrusted(false);

$ipRangesIpRange1 = new IPv4CidrRange();
$ipRangesIpRange1->setOdataType('#microsoft.graph.iPv4CidrRange');

$ipRangesIpRange1->setCidrAddress('12.34.221.11/22');


$ipRangesArray []= $ipRangesIpRange1;
$ipRangesIpRange2 = new IPv6CidrRange();
$ipRangesIpRange2->setOdataType('#microsoft.graph.iPv6CidrRange');

$ipRangesIpRange2->setCidrAddress('2001:0:9d38:90d6:0:0:0:0/63');


$ipRangesArray []= $ipRangesIpRange2;
$requestBody->setIpRanges($ipRangesArray);




$result = $graphServiceClient->identity()->conditionalAccess()->namedLocations()->post($requestBody);


```