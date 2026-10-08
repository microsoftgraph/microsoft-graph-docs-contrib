---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Fido2AuthenticationMethodConfiguration;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationMethodState;
use Microsoft\Graph\Beta\Generated\Models\Fido2KeyRestrictions;
use Microsoft\Graph\Beta\Generated\Models\Fido2RestrictionEnforcementType;
use Microsoft\Graph\Beta\Generated\Models\PasskeyAuthenticationMethodTarget;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationMethodTargetType;
use Microsoft\Graph\Beta\Generated\Models\ExcludeTarget;
use Microsoft\Graph\Beta\Generated\Models\PasskeyProfile;
use Microsoft\Graph\Beta\Generated\Models\PasskeyTypes;
use Microsoft\Graph\Beta\Generated\Models\AttestationEnforcement;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Fido2AuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.fido2AuthenticationMethodConfiguration');
$requestBody->setId('Fido2');
$requestBody->setState(new AuthenticationMethodState('disabled'));
$requestBody->setIsSelfServiceRegistrationAllowed(true);
$requestBody->setIsAttestationEnforced(true);
$keyRestrictions = new Fido2KeyRestrictions();
$keyRestrictions->setIsEnforced(false);
$keyRestrictions->setEnforcementType(new Fido2RestrictionEnforcementType('block'));
$keyRestrictions->setAaGuids([	]);
$requestBody->setKeyRestrictions($keyRestrictions);
$includeTargetsPasskeyAuthenticationMethodTarget1 = new PasskeyAuthenticationMethodTarget();
$includeTargetsPasskeyAuthenticationMethodTarget1->setTargetType(new AuthenticationMethodTargetType('group'));
$includeTargetsPasskeyAuthenticationMethodTarget1->setId('all_users');
$includeTargetsPasskeyAuthenticationMethodTarget1->setIsRegistrationRequired(false);
$includeTargetsPasskeyAuthenticationMethodTarget1->setAllowedPasskeyProfiles(['00000000-0000-0000-0000-000000000001', 	]);
$includeTargetsArray []= $includeTargetsPasskeyAuthenticationMethodTarget1;
$requestBody->setIncludeTargets($includeTargetsArray);

$requestBody->setExcludeTargets([]);
$passkeyProfilesPasskeyProfile1 = new PasskeyProfile();
$passkeyProfilesPasskeyProfile1->setId('00000000-0000-0000-0000-000000000001');
$passkeyProfilesPasskeyProfile1->setName('Default passkey profile');
$passkeyProfilesPasskeyProfile1->setPasskeyTypes(new PasskeyTypes('deviceBound,synced'));
$passkeyProfilesPasskeyProfile1->setAttestationEnforcement(new AttestationEnforcement('disabled'));
$passkeyProfilesPasskeyProfile1KeyRestrictions = new Fido2KeyRestrictions();
$passkeyProfilesPasskeyProfile1KeyRestrictions->setIsEnforced(false);
$passkeyProfilesPasskeyProfile1KeyRestrictions->setEnforcementType(new Fido2RestrictionEnforcementType('allow'));
$passkeyProfilesPasskeyProfile1KeyRestrictions->setAaGuids([]);
$passkeyProfilesPasskeyProfile1->setKeyRestrictions($passkeyProfilesPasskeyProfile1KeyRestrictions);
$passkeyProfilesArray []= $passkeyProfilesPasskeyProfile1;
$requestBody->setPasskeyProfiles($passkeyProfilesArray);


$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```