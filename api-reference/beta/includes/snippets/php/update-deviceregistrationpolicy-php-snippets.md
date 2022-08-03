---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new DeviceRegistrationPolicyPostRequestBody();
$additionalData = [
'id' => 'deviceRegistrationPolicy', 
'displayName' => 'Device Registration Policy', 
'description' => 'Tenant-wide policy that manages intial provisioning controls using quota restrictions, additional authentication and authorization checks', 
'userDeviceQuota' => 50,
'multiFactorAuthConfiguration' => '0', 
'azureADRegistration' => $requestBody = new AzureADRegistration();
$		requestBody->setAppliesTo('1');

		$requestBody->setIsAdminConfigurable(false);

$requestBody->setAllowedUsers([]);

$requestBody->setAllowedGroups([]);


$requestBody->setAzureADRegistration($azureADRegistration);

'azureADJoin' => $requestBody = new AzureADJoin();
$requestBody->setAppliesTo('1');

$requestBody->setIsAdminConfigurable(true);

$requestBody->setAllowedUsers([]);

$requestBody->setAllowedGroups([]);


$requestBody->setAzureADJoin($azureADJoin);

];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->deviceRegistrationPolicy()->put($requestBody);


```