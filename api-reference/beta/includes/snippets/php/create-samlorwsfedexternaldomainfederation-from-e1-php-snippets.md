---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new FederationConfiguration();
$additionalData = [
		'@odata.type' => 'microsoft.graph.samlOrWsFedExternalDomainFederation', 
		'issuerUri' => 'https://contoso.com/issuerUri', 
		'displayName' => 'contoso display name', 
		'metadataExchangeUri' => 'https://contoso.com/metadataExchangeUri', 
		'passiveSignInUri' => 'https://contoso.com/signin', 
		'preferredAuthenticationProtocol' => 'wsFed', 
		'domains' => $domains1 = new ();
$		domains1->set@odatatype('microsoft.graph.externalDomainName');

$		domains1->setId('contoso.com');


$domainsArray []= $domains1;
$requestBody->setDomains($domainsArray);


	'signingCertificate' => 'MIIDADCCAeigAwIBAgIQEX41y8r6', 
];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->directory()->federationConfigurationsById('identityProviderBase-id')->post($requestBody);


```