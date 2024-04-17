---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CloudPcOrganizationSettings;
use Microsoft\Graph\Generated\Models\CloudPcWindowsSettings;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcOrganizationSettings();
$requestBody->setOdataType('#microsoft.graph.cloudPcOrganizationSettings');
$requestBody->setEnableMEMAutoEnroll(true);
$requestBody->setOsVersion(new CloudPcOperatingSystem('windows11'));
$requestBody->setUserAccountType(new CloudPcUserAccountType('standardUser'));
$windowsSettings = new CloudPcWindowsSettings();
$windowsSettings->setLanguage('en-US');
$requestBody->setWindowsSettings($windowsSettings);

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->organizationSettings()->patch($requestBody)->wait();

```