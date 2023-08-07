---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CreatePostRequestBody();
$requestBody->setDisplayName('Test Printer');

$requestBody->setManufacturer('Test Printer Manufacturer');

$requestBody->setModel('Test Printer Model');

$requestBody->setPhysicalDeviceId(null);

$requestBody->setHasPhysicalDevice(false);

$certificateSigningRequest = new PrintCertificateSigningRequest();
$certificateSigningRequest->setContent('{content}');

$certificateSigningRequest->setTransportKey('{sampleTransportKey}');


$requestBody->setCertificateSigningRequest($certificateSigningRequest);
$requestBody->setConnectorId(null);



$graphServiceClient->print()->printers()->create()->post($requestBody);


```