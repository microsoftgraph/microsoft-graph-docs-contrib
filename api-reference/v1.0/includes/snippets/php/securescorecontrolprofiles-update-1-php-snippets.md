---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new SecureScoreControlProfile();
$vendorInformation = new SecurityVendorInformation();
$vendorInformation->setProvider('SecureScore');

$VendorInformation->setProviderVersion(null);

$VendorInformation->setSubProvider(null);

$vendorInformation->setVendor('Microsoft');


$requestBody->setVendorInformation($vendorInformation);
$additionalData = [
		'assignedTo' => '', 
		'comment' => 'control is reviewed', 
		'state' => 'Reviewed', 
];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->security()->secureScoreControlProfilesById('secureScoreControlProfile-id')->patch($requestBody);


```