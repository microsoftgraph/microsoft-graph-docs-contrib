---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EnterpriseCodeSigningCertificate();
$requestBody->set@odatatype('#microsoft.graph.enterpriseCodeSigningCertificate');

$requestBody->setContent(base64_decode('Y29udGVudA=='));

$requestBody->setStatus(new CertificateStatus('provisioned'));

$requestBody->setSubjectName('Subject Name value');

$requestBody->setSubject('Subject value');

$requestBody->setIssuerName('Issuer Name value');

$requestBody->setIssuer('Issuer value');

$requestBody->setExpirationDateTime(new DateTime('2016-12-31T23:57:57.2481234-08:00'));

$requestBody->setUploadDateTime(new DateTime('2016-12-31T23:58:46.5747426-08:00'));



$result = $graphServiceClient->deviceAppManagement()->enterpriseCodeSigningCertificates()->byEnterpriseCodeSigningCertificateId('enterpriseCodeSigningCertificate-id')->patch($requestBody);


```