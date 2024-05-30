---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SecureScoreControlProfile;
use Microsoft\Graph\Generated\Models\SecurityVendorInformation;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SecureScoreControlProfile();
$vendorInformation = new SecurityVendorInformation();
$vendorInformation->setProvider('SecureScore');
$vendorInformation->setProviderVersion(null);
$vendorInformation->setSubProvider(null);
$vendorInformation->setVendor('Microsoft');
$requestBody->setVendorInformation($vendorInformation);
$additionalData = [
	'assignedTo' => '',
	'comment' => 'control is reviewed',
	'state' => 'Reviewed',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->security()->secureScoreControlProfiles()->bySecureScoreControlProfileId('secureScoreControlProfile-id')->patch($requestBody)->wait();

```