---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new WindowsAutopilotDeviceIdentity();
$requestBody->set@odatatype('#microsoft.graph.windowsAutopilotDeviceIdentity');

$requestBody->setGroupTag('Group Tag value');

$requestBody->setPurchaseOrderIdentifier('Purchase Order Identifier value');

$requestBody->setSerialNumber('Serial Number value');

$requestBody->setProductKey('Product Key value');

$requestBody->setManufacturer('Manufacturer value');

$requestBody->setModel('Model value');

$requestBody->setEnrollmentState(new EnrollmentState('enrolled'));

$requestBody->setLastContactedDateTime(new DateTime('2016-12-31T23:58:44.2908994-08:00'));

$requestBody->setAddressableUserName('Addressable User Name value');

$requestBody->setUserPrincipalName('User Principal Name value');

$requestBody->setResourceName('Resource Name value');

$requestBody->setSkuNumber('Sku Number value');

$requestBody->setSystemFamily('System Family value');

$requestBody->setAzureActiveDirectoryDeviceId('Azure Active Directory Device Id value');

$requestBody->setManagedDeviceId('Managed Device Id value');

$requestBody->setDisplayName('Display Name value');



$result = $graphServiceClient->deviceManagement()->windowsAutopilotDeviceIdentities()->post($requestBody);


```