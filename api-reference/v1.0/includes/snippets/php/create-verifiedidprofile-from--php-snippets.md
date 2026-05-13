---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\VerifiedIdProfile;
use Microsoft\Graph\Generated\Models\VerifiedIdProfileState;
use Microsoft\Graph\Generated\Models\VerifiedIdProfileConfiguration;
use Microsoft\Graph\Generated\Models\ClaimBindingSource;
use Microsoft\Graph\Generated\Models\ClaimBinding;
use Microsoft\Graph\Generated\Models\MatchConfidenceLevel;
use Microsoft\Graph\Generated\Models\ClaimValidation;
use Microsoft\Graph\Generated\Models\FaceCheckConfiguration;
use Microsoft\Graph\Generated\Models\VerifiedIdUsageConfiguration;
use Microsoft\Graph\Generated\Models\VerifiedIdUsageConfigurationPurpose;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VerifiedIdProfile();
$requestBody->setName('Contoso Verified ID');
$requestBody->setDescription('Contoso Verified Identity');
$requestBody->setLastModifiedDateTime(null);
$requestBody->setState(new VerifiedIdProfileState('enabled'));
$requestBody->setVerifierDid('did:web:eu.did-dev.contoso.io');
$requestBody->setPriority(0);
$verifiedIdProfileConfiguration = new VerifiedIdProfileConfiguration();
$verifiedIdProfileConfiguration->setType('verifiedIdentity');
$verifiedIdProfileConfiguration->setAcceptedIssuer('did:web:eu.did-dev.contoso.io');
$verifiedIdProfileConfiguration->setClaimBindingSource(new ClaimBindingSource('directory'));
$claimBindingsClaimBinding1 = new ClaimBinding();
$claimBindingsClaimBinding1->setMatchConfidenceLevel(new MatchConfidenceLevel('exact'));
$claimBindingsClaimBinding1->setSourceAttribute('First name');
$claimBindingsClaimBinding1->setVerifiedIdClaim('vc.credentialSubject.firstName');
$claimBindingsArray []= $claimBindingsClaimBinding1;
$claimBindingsClaimBinding2 = new ClaimBinding();
$claimBindingsClaimBinding2->setMatchConfidenceLevel(new MatchConfidenceLevel('exact'));
$claimBindingsClaimBinding2->setSourceAttribute('Last name');
$claimBindingsClaimBinding2->setVerifiedIdClaim('vc.credentialSubject.lastName');
$claimBindingsArray []= $claimBindingsClaimBinding2;
$verifiedIdProfileConfiguration->setClaimBindings($claimBindingsArray);

$verifiedIdProfileConfigurationClaimValidation = new ClaimValidation();
$verifiedIdProfileConfigurationClaimValidation->setIsEnabled(true);
$verifiedIdProfileConfigurationClaimValidation->setCustomExtensionId('00aa00aa-bb11-cc22-dd33-44ee44ee44ee');
$verifiedIdProfileConfiguration->setClaimValidation($verifiedIdProfileConfigurationClaimValidation);
$requestBody->setVerifiedIdProfileConfiguration($verifiedIdProfileConfiguration);
$faceCheckConfiguration = new FaceCheckConfiguration();
$faceCheckConfiguration->setIsEnabled(true);
$faceCheckConfiguration->setSourcePhotoClaimName('portrait');
$requestBody->setFaceCheckConfiguration($faceCheckConfiguration);
$verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1 = new VerifiedIdUsageConfiguration();
$verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1->setIsEnabledForTestOnly(true);
$verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1->setPurpose(new VerifiedIdUsageConfigurationPurpose('recovery'));
$verifiedIdUsageConfigurationsArray []= $verifiedIdUsageConfigurationsVerifiedIdUsageConfiguration1;
$requestBody->setVerifiedIdUsageConfigurations($verifiedIdUsageConfigurationsArray);


$result = $graphServiceClient->identity()->verifiedId()->profiles()->post($requestBody)->wait();

```