---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CloudPcProvisioningPolicy();
$requestBody->setOdataType('#microsoft.graph.cloudPcProvisioningPolicy');

$requestBody->setDescription('Description value');

$requestBody->setDisplayName('Display Name value');

$domainJoinConfiguration = new CloudPcDomainJoinConfiguration();
$domainJoinConfiguration->setOnPremisesConnectionId('16ee6c71-fc10-438b-88ac-daa1ccafffff');

$additionalData = [
		'domainJoinType' => 'hybridAzureADJoin', 
];
$domainJoinConfiguration->setAdditionalData($additionalData);



$requestBody->setDomainJoinConfiguration($domainJoinConfiguration);
$domainJoinConfigurationsCloudPcDomainJoinConfiguration1 = new CloudPcDomainJoinConfiguration();
$domainJoinConfigurationsCloudPcDomainJoinConfiguration1->setOnPremisesConnectionId('16ee6c71-fc10-438b-88ac-daa1ccafffff');

$domainJoinConfigurationsCloudPcDomainJoinConfiguration1->setType(new CloudPcDomainJoinType('hybridAzureADJoin'));


$domainJoinConfigurationsArray []= $domainJoinConfigurationsCloudPcDomainJoinConfiguration1;
$domainJoinConfigurationsCloudPcDomainJoinConfiguration2 = new CloudPcDomainJoinConfiguration();
$domainJoinConfigurationsCloudPcDomainJoinConfiguration2->setOnPremisesConnectionId('26e16c71-f210-438b-88ac-d481ccafffff');

$domainJoinConfigurationsCloudPcDomainJoinConfiguration2->setType(new CloudPcDomainJoinType('hybridAzureADJoin'));


$domainJoinConfigurationsArray []= $domainJoinConfigurationsCloudPcDomainJoinConfiguration2;
$requestBody->setDomainJoinConfigurations($domainJoinConfigurationsArray);


$requestBody->setId('1d164206-bf41-4fd2-8424-a3192d39ffff');

$requestBody->setEnableSingleSignOn(true);

$requestBody->setImageDisplayName('Windows-10 19h1-evd');

$requestBody->setImageId('MicrosoftWindowsDesktop_Windows-10_19h1-evd');

$requestBody->setImageType(new CloudPcProvisioningPolicyImageType('gallery'));

$requestBody->setOnPremisesConnectionId('4e47d0f6-6f77-44f0-8893-c0fe1701ffff');

$windowsSettings = new CloudPcWindowsSettings();
$windowsSettings->setLanguage('en-US');


$requestBody->setWindowsSettings($windowsSettings);
$requestBody->setProvisioningType(new CloudPcProvisioningType('dedicated'));



$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPolicies()->post($requestBody);


```