---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CertificateAuthorityAsEntity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CertificateAuthorityAsEntity();
$requestBody->setIsRootAuthority(true);
$requestBody->setCertificate(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('MIIGrDCCBJSgAwIBAgITWgACAdWQXvWynRA6/AABAAIB....')));
$requestBody->setIssuer('ExampleIssuer');
$requestBody->setIssuerSubjectKeyIdentifier(' BA:AF:4A:02:4D:AA:A6:F1:3C:25:8E:AD:FA:38:98:CE:D9:23:32:D9');

$result = $graphServiceClient->directory()->certificateAuthorities()->certificateBasedApplicationConfigurations()->byCertificateBasedApplicationConfigurationId('certificateBasedApplicationConfiguration-id')->trustedCertificateAuthorities()->post($requestBody)->wait();

```