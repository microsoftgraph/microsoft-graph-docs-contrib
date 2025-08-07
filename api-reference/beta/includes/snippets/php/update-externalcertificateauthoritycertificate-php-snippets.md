---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\ExternalCertificateAuthorityCertificate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalCertificateAuthorityCertificate();
$requestBody->setCertificate('-----BEGIN CERTIFICATE-----\nMIIBIjANBgkqh...');
$requestBody->setChain('-----BEGIN CERTIFICATE-----\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AM...');

$result = $graphServiceClient->networkAccess()->tls()->externalCertificateAuthorityCertificates()->byExternalCertificateAuthorityCertificateId('externalCertificateAuthorityCertificate-id')->patch($requestBody)->wait();

```