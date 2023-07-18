---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InternalDomainFederation();
$requestBody->setOdataType('#microsoft.graph.internalDomainFederation');

$requestBody->setDisplayName('Contoso');

$requestBody->setIssuerUri('http://contoso.com/adfs/services/trust');

$requestBody->setMetadataExchangeUri('https://sts.contoso.com/adfs/services/trust/mex');

$requestBody->setSigningCertificate('MIIE3jCCAsagAwIBAgIQQcyDaZz3MI');

$requestBody->setPassiveSignInUri('https://sts.contoso.com/adfs/ls');

$requestBody->setPreferredAuthenticationProtocol(new AuthenticationProtocol('wsFed'));

$requestBody->setActiveSignInUri('https://sts.contoso.com/adfs/services/trust/2005/usernamemixed');

$requestBody->setSignOutUri('https://sts.contoso.com/adfs/ls');

$requestBody->setPromptLoginBehavior(new PromptLoginBehavior('nativeSupport'));

$requestBody->setIsSignedAuthenticationRequestRequired(true);

$requestBody->setNextSigningCertificate('MIIE3jCCAsagAwIBAgIQQcyDaZz3MI');

$requestBody->setFederatedIdpMfaBehavior(new FederatedIdpMfaBehavior('rejectMfaByFederatedIdp'));



$result = $graphServiceClient->domains()->byDomainId('domain-id')->federationConfiguration()->post($requestBody);


```