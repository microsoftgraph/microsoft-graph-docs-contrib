---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdProfile;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdProfileConfiguration;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdUsageConfiguration;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdUsageConfigurationPurpose;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VerifiedIdProfile();
$verifiedIdProfileConfiguration = new VerifiedIdProfileConfiguration();
$additionalData = [
	'methodType' => 'tenantCustomCredential',
	'manifestUrl' => 'https://verifiedid.contoso.com/manifest',
];
$verifiedIdProfileConfiguration->setAdditionalData($additionalData);
$requestBody->setVerifiedIdProfileConfiguration($verifiedIdProfileConfiguration);
$verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1 = new VerifiedIdUsageConfiguration();
$verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1->setIsEnabledForTestOnly(false);
$verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1->setPurpose(new VerifiedIdUsageConfigurationPurpose('verification'));
$verifiedIdUsageConfigurationsArray []= $verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1;
$requestBody->setVerifiedIdUsageConfigurations($verifiedIdUsageConfigurationsArray);

$additionalData = [
'mobileDriversLicenseConfiguration' => [
	'acceptedRegions' => [
'region-code', ],
	'documentStandard' => 'document-standard',
],
'selfServiceIssuance' => [
	'isEnabled' => true,
	'issuanceUrl' => 'https://verifiedid.contoso.com/issue',
],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->identity()->verifiedId()->profiles()->byVerifiedIdProfileId('verifiedIdProfile-id')->patch($requestBody)->wait();

```