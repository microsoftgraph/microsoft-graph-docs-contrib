---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdProfile;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdProfileState;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdProfileConfiguration;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdMethodType;
use Microsoft\Graph\Beta\Generated\Models\ClaimBindingSource;
use Microsoft\Graph\Beta\Generated\Models\ClaimBinding;
use Microsoft\Graph\Beta\Generated\Models\FaceCheckConfiguration;
use Microsoft\Graph\Beta\Generated\Models\MobileDriversLicenseConfiguration;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdUsageConfiguration;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdUsageConfigurationPurpose;
use Microsoft\Graph\Beta\Generated\Models\VerifiedIdSelfServiceIssuance;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VerifiedIdProfile();
$requestBody->setName('Contoso Verified ID');
$requestBody->setDescription('Contoso Verified Identity');
$requestBody->setLastModifiedDateTime(null);
$requestBody->setState(new VerifiedIdProfileState('enabled'));
$requestBody->setVerifierDid('did:web:eu.did-dev.contoso.io');
$requestBody->setPriority(0);
$verifiedIdProfileConfiguration = new VerifiedIdProfileConfiguration();
$verifiedIdProfileConfiguration->setMethodType(new VerifiedIdMethodType('tenantCustomCredential'));
$verifiedIdProfileConfiguration->setType('verifiedIdentity');
$verifiedIdProfileConfiguration->setManifestUrl('https://verifiedid.contoso.com/manifest');
$verifiedIdProfileConfiguration->setAcceptedIssuer('did:web:eu.did-dev.contoso.io');
$verifiedIdProfileConfiguration->setClaimBindingSource(new ClaimBindingSource('directory'));
$claimBindingsClaimBinding1 = new ClaimBinding();
$claimBindingsClaimBinding1->setSourceAttribute('First name');
$claimBindingsClaimBinding1->setVerifiedIdClaim('vc.credentialSubject.firstName');
$claimBindingsArray []= $claimBindingsClaimBinding1;
$claimBindingsClaimBinding2 = new ClaimBinding();
$claimBindingsClaimBinding2->setSourceAttribute('Last name');
$claimBindingsClaimBinding2->setVerifiedIdClaim('vc.credentialSubject.lastName');
$claimBindingsArray []= $claimBindingsClaimBinding2;
$verifiedIdProfileConfiguration->setClaimBindings($claimBindingsArray);

$requestBody->setVerifiedIdProfileConfiguration($verifiedIdProfileConfiguration);
$faceCheckConfiguration = new FaceCheckConfiguration();
$faceCheckConfiguration->setIsEnabled(true);
$faceCheckConfiguration->setSourcePhotoClaimName('portrait');
$requestBody->setFaceCheckConfiguration($faceCheckConfiguration);
$mobileDriversLicenseConfiguration = new MobileDriversLicenseConfiguration();
$mobileDriversLicenseConfiguration->setAcceptedRegions(['region-code', ]);
$mobileDriversLicenseConfiguration->setDocumentStandard('document-standard');
$requestBody->setMobileDriversLicenseConfiguration($mobileDriversLicenseConfiguration);
$verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1 = new VerifiedIdUsageConfiguration();
$verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1->setIsEnabledForTestOnly(true);
$verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1->setPurpose(new VerifiedIdUsageConfigurationPurpose('verification'));
$verifiedIdUsageConfigurationsArray []= $verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1;
$requestBody->setVerifiedIdUsageConfigurations($verifiedIdUsageConfigurationsArray);

$selfServiceIssuance = new VerifiedIdSelfServiceIssuance();
$selfServiceIssuance->setIsEnabled(true);
$selfServiceIssuance->setIssuanceUrl('https://verifiedid.contoso.com/issue');
$requestBody->setSelfServiceIssuance($selfServiceIssuance);

$result = $graphServiceClient->identity()->verifiedId()->profiles()->post($requestBody)->wait();

```