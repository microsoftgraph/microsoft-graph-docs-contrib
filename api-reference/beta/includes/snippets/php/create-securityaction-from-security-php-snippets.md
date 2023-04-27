---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SecurityAction();
$requestBody->setName('BlockIp');

$requestBody->setActionReason('Test');

$parametersKeyValuePair1 = new KeyValuePair();
$parametersKeyValuePair1->setName('IP');

$parametersKeyValuePair1->setValue('1.2.3.4');


$parametersArray []= $parametersKeyValuePair1;
$requestBody->setParameters($parametersArray);


$vendorInformation = new SecurityVendorInformation();
$vendorInformation->setProvider('Windows Defender ATP');

$vendorInformation->setVendor('Microsoft');


$requestBody->setVendorInformation($vendorInformation);


$result = $graphServiceClient->security()->securityActions()->post($requestBody);


```