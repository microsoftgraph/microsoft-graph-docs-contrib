---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CloudPcOrganizationSettings();
$requestBody->set@odatatype('#microsoft.graph.cloudPcOrganizationSettings');

$requestBody->setEnableMEMAutoEnroll(true);

$requestBody->setOsVersion(new CloudPcOperatingSystem('windows11'));

$requestBody->setUserAccountType(new CloudPcUserAccountType('standarduser'));

$windowsSettings = new CloudPcWindowsSettings();
$windowsSettings->setLanguage('en-US');


$requestBody->setWindowsSettings($windowsSettings);


$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->organizationSettings()->patch($requestBody);


```