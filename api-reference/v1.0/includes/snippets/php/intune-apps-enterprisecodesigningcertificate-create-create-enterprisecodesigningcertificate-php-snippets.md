---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EnterpriseCodeSigningCertificate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EnterpriseCodeSigningCertificate();
$requestBody->setOdataType('#microsoft.graph.enterpriseCodeSigningCertificate');
$requestBody->setContent(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('Y29udGVudA==')));
$requestBody->setStatus(new CertificateStatus('provisioned'));
$requestBody->setSubjectName('Subject Name value');
$requestBody->setSubject('Subject value');
$requestBody->setIssuerName('Issuer Name value');
$requestBody->setIssuer('Issuer value');
$requestBody->setExpirationDateTime(new \DateTime('2016-12-31T23:57:57.2481234-08:00'));
$requestBody->setUploadDateTime(new \DateTime('2016-12-31T23:58:46.5747426-08:00'));

$result = $graphServiceClient->deviceAppManagement()->enterpriseCodeSigningCertificates()->post($requestBody)->wait();

```