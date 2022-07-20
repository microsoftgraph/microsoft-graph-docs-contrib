---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CloudPcOrganizationSettings();
$requestBody->set@odatatype('#microsoft.graph.cloudPcOrganizationSettings');

$requestBody->setUserAccountType(new CloudPcUserAccountType('standarduser'));

$requestBody->setOsVersion(new CloudPcOperatingSystem('windows11'));

$windowsSettings = new CloudPcWindowsSettings();
$windowsSettings->setLanguage('en-US');


$requestBody->setWindowsSettings($windowsSettings);


$graphServiceClient->deviceManagement()->virtualEndpoint()->organizationSettings()->patch($requestBody);


```