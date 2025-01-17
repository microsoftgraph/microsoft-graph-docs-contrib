---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\MutualTlsOauthConfiguration;
use Microsoft\Graph\Beta\Generated\Models\CertificateAuthority;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MutualTlsOauthConfiguration();
$certificateAuthoritiesCertificateAuthority1 = new CertificateAuthority();
$certificateAuthoritiesCertificateAuthority1->setIsRootAuthority(true);
$certificateAuthoritiesCertificateAuthority1->setCertificateRevocationListUrl('http://acme.com/root.crl');
$certificateAuthoritiesCertificateAuthority1->setDeltaCertificateRevocationListUrl(null);
$certificateAuthoritiesCertificateAuthority1->setCertificate(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('Binary')));
$certificateAuthoritiesCertificateAuthority1->setIssuer('acme Inc');
$additionalData = [
	'issuerSubjectkeyIdentifier' => 'SKI',
];
$certificateAuthoritiesCertificateAuthority1->setAdditionalData($additionalData);
$certificateAuthoritiesArray []= $certificateAuthoritiesCertificateAuthority1;
$requestBody->setCertificateAuthorities($certificateAuthoritiesArray);


$result = $graphServiceClient->directory()->certificateAuthorities()->mutualTlsOauthConfigurations()->byMutualTlsOauthConfigurationId('mutualTlsOauthConfiguration-id')->patch($requestBody)->wait();

```