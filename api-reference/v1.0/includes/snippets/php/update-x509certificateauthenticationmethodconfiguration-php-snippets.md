---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
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
$includeTargetsAuthenticationMethodTarget1 = new AuthenticationMethodTarget();
$includeTargetsAuthenticationMethodTarget1->setTargetType(new AuthenticationMethodTargetType('group'));

$includeTargetsAuthenticationMethodTarget1->setId('all_users');

$includeTargetsAuthenticationMethodTarget1->setIsRegistrationRequired(false);


$includeTargetsArray []= $includeTargetsAuthenticationMethodTarget1;
$requestBody->setIncludeTargets($includeTargetsArray);




$result = $graphServiceClient->policies()->authenticationMethodsPolicy()->authenticationMethodConfigurations()->byAuthenticationMethodConfigurationId('authenticationMethodConfiguration-id')->patch($requestBody);


```