---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new InternalDomainFederation();
$requestBody->set@odatatype('#microsoft.graph.internalDomainFederation');

$requestBody->setDisplayName('Contoso');

$requestBody->setIssuerUri('http://contoso.com/adfs/services/trust');

$requestBody->setMetadataExchangeUri('https://sts.contoso.com/adfs/services/trust/mex');

$requestBody->setSigningCertificate('MIIE3jCCAsagAwIBAgIQQcyDaZz3MI');

$requestBody->setPassiveSignInUri('https://sts.contoso.com/adfs/ls');

$requestBody->setPreferredAuthenticationProtocol(new AuthenticationProtocol('wsfed'));

$requestBody->setActiveSignInUri('https://sts.contoso.com/adfs/services/trust/2005/usernamemixed');

$requestBody->setSignOutUri('https://sts.contoso.com/adfs/ls');

$requestBody->setPromptLoginBehavior(new PromptLoginBehavior('nativesupport'));

$requestBody->setIsSignedAuthenticationRequestRequired(true);

$requestBody->setNextSigningCertificate('MIIE3jCCAsagAwIBAgIQQcyDaZz3MI');

$requestBody->setFederatedIdpMfaBehavior(new FederatedIdpMfaBehavior('rejectmfabyfederatedidp'));



$result = $graphServiceClient->domainsById('domain-id')->federationConfiguration()->post($requestBody);


```