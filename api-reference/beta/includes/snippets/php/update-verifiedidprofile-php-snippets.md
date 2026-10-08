---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdProfile;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdProfileConfiguration;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdMethodType;
use Microsoft\Graph\Beta\Generated\Models\MobileDriversLicenseConfiguration;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdSelfServiceIssuance;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdUsageConfiguration;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdUsageConfigurationPurpose;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VerifiedIdProfile();
$verifiedIdProfileConfiguration = new VerifiedIdProfileConfiguration();
$verifiedIdProfileConfiguration->setMethodType(new VerifiedIdMethodType('tenantCustomCredential'));
$verifiedIdProfileConfiguration->setManifestUrl('https://verifiedid.contoso.com/manifest');
$requestBody->setVerifiedIdProfileConfiguration($verifiedIdProfileConfiguration);
$mobileDriversLicenseConfiguration = new MobileDriversLicenseConfiguration();
$mobileDriversLicenseConfiguration->setAcceptedRegions(['region-code', 	]);
$mobileDriversLicenseConfiguration->setDocumentStandard('document-standard');
$requestBody->setMobileDriversLicenseConfiguration($mobileDriversLicenseConfiguration);
$selfServiceIssuance = new VerifiedIdSelfServiceIssuance();
$selfServiceIssuance->setIsEnabled(true);
$selfServiceIssuance->setIssuanceUrl('https://verifiedid.contoso.com/issue');
$requestBody->setSelfServiceIssuance($selfServiceIssuance);
$verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1 = new VerifiedIdUsageConfiguration();
$verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1->setIsEnabledForTestOnly(false);
$verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1->setPurpose(new VerifiedIdUsageConfigurationPurpose('verification'));
$verifiedIdUsageConfigurationsArray []= $verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1;
$requestBody->setVerifiedIdUsageConfigurations($verifiedIdUsageConfigurationsArray);


$result = $graphServiceClient->identity()->verifiedId()->profiles()->byVerifiedIdProfileId('verifiedIdProfile-id')->patch($requestBody)->wait();

```