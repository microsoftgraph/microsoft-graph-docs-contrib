---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\X509CertificateAuthenticationMethodConfiguration;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationMethodState;
use Microsoft\Graph\Beta\Generated\Models\X509CertificateUserBinding;
use Microsoft\Graph\Beta\Generated\Models\X509CertificateAuthenticationModeConfiguration;
use Microsoft\Graph\Beta\Generated\Models\X509CertificateAuthenticationMode;
use Microsoft\Graph\Beta\Generated\Models\X509CertificateRule;
use Microsoft\Graph\Beta\Generated\Models\X509CertificateRuleType;
use Microsoft\Graph\Beta\Generated\Models\X509CertificateIssuerHintsConfiguration;
use Microsoft\Graph\Beta\Generated\Models\X509CertificateIssuerHintsState;
use Microsoft\Graph\Beta\Generated\Models\X509CertificateAuthorityScope;
use Microsoft\Graph\Beta\Generated\Models\IncludeTarget;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationMethodTargetType;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationMethodTarget;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new X509CertificateAuthenticationMethodConfiguration();
$requestBody->setOdataType('#microsoft.graph.x509CertificateAuthenticationMethodConfiguration');
$requestBody->setId('X509Certificate');
$requestBody->setState(new AuthenticationMethodState('enabled'));
$certificateUserBindingsX509CertificateUserBinding1 = new X509CertificateUserBinding();
$certificateUserBindingsX509CertificateUserBinding1->setX509CertificateField('PrincipalName');
$certificateUserBindingsX509CertificateUserBinding1->setUserProperty('onPremisesUserPrincipalName');
$certificateUserBindingsX509CertificateUserBinding1->setPriority(1);
$certificateUserBindingsArray []= $certificateUserBindingsX509CertificateUserBinding1;
$requestBody->setCertificateUserBindings($certificateUserBindingsArray);

$authenticationModeConfiguration = new X509CertificateAuthenticationModeConfiguration();
$authenticationModeConfiguration->setX509CertificateAuthenticationDefaultMode(new X509CertificateAuthenticationMode('x509CertificateMultiFactor'));
$rulesX509CertificateRule1 = new X509CertificateRule();
$rulesX509CertificateRule1->setX509CertificateRuleType(new X509CertificateRuleType('issuerSubject'));
$rulesX509CertificateRule1->setIdentifier('CN=ContosoCA,DC=Contoso,DC=org ');
$rulesX509CertificateRule1->setX509CertificateAuthenticationMode(new X509CertificateAuthenticationMode('x509CertificateMultiFactor'));
$rulesArray []= $rulesX509CertificateRule1;
$rulesX509CertificateRule2 = new X509CertificateRule();
$rulesX509CertificateRule2->setX509CertificateRuleType(new X509CertificateRuleType('policyOID'));
$rulesX509CertificateRule2->setIdentifier('1.2.3.4');
$rulesX509CertificateRule2->setX509CertificateAuthenticationMode(new X509CertificateAuthenticationMode('x509CertificateMultiFactor'));
$rulesArray []= $rulesX509CertificateRule2;
$authenticationModeConfiguration->setRules($rulesArray);

$requestBody->setAuthenticationModeConfiguration($authenticationModeConfiguration);
$issuerHintsConfiguration = new X509CertificateIssuerHintsConfiguration();
$issuerHintsConfiguration->setState(new X509CertificateIssuerHintsState('disabled'));
$requestBody->setIssuerHintsConfiguration($issuerHintsConfiguration);
$certificateAuthorityScopesX509CertificateAuthorityScope1 = new X509CertificateAuthorityScope();
$certificateAuthorityScopesX509CertificateAuthorityScope1->setSubjectKeyIdentifier('aaaaaaaabbbbcccc111122222222222222333333');
$certificateAuthorityScopesX509CertificateAuthorityScope1->setPublicKeyInfrastructureIdentifier('Contoso PKI');
$includeTargetsIncludeTarget1 = new IncludeTarget();
$includeTargetsIncludeTarget1->setId('aaaaaaaa-bbbb-cccc-1111-222222222222');
$includeTargetsIncludeTarget1->setTargetType(new AuthenticationMethodTargetType('group'));
$includeTargetsArray []= $includeTargetsIncludeTarget1;
$certificateAuthorityScopesX509CertificateAuthorityScope1->setIncludeTargets($includeTargetsArray);

$certificateAuthorityScopesArray []= $certificateAuthorityScopesX509CertificateAuthorityScope1;
$requestBody->setCertificateAuthorityScopes($certificateAuthorityScopesArray);

$includeTargetsAuthenticationMethodTarget1 = new AuthenticationMethodTarget();
$includeTargetsAuthenticationMethodTarget1->setTargetType(new AuthenticationMethodTargetType('group'));
$includeTargetsAuthenticationMethodTarget1->setId('all_users');
$includeTargetsAuthenticationMethodTarget1->setIsRegistrationRequired(false);
$includeTargetsArray []= $includeTargetsAuthenticationMethodTarget1;
$requestBody->setIncludeTargets($includeTargetsArray);

$additionalData = [
'crlValidationConfiguration' => [
'state' => 'disabled',
'exemptedCertificateAuthoritiesSubjectKeyIdentifiers' => [],
],
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody)->wait();

```