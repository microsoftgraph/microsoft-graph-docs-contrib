---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ServicePrincipal();
$keyCredentialsKeyCredential1 = new KeyCredential();
$keyCredentialsKeyCredential1->setCustomKeyIdentifier(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A')));
$keyCredentialsKeyCredential1->setEndDateTime(new \DateTime('2027-01-22T00:00:00Z'));
$keyCredentialsKeyCredential1->setKeyId('4c266507-3e74-4b91-aeba-18a25b450f6e');
$keyCredentialsKeyCredential1->setStartDateTime(new \DateTime('2024-02-21T17:09:35Z'));
$keyCredentialsKeyCredential1->setType('X509CertAndPassword');
$keyCredentialsKeyCredential1->setUsage('Sign');
$keyCredentialsKeyCredential1->setKey(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('MIICqjCCAZKgAwIBAgIIZYCy..KlDixjUT61i4tFs=')));
$keyCredentialsKeyCredential1->setDisplayName('CN=AWSContoso');
$keyCredentialsArray []= $keyCredentialsKeyCredential1;
$keyCredentialsKeyCredential2 = new KeyCredential();
$keyCredentialsKeyCredential2->setCustomKeyIdentifier(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A')));
$keyCredentialsKeyCredential2->setEndDateTime(new \DateTime('2027-01-22T00:00:00Z'));
$keyCredentialsKeyCredential2->setKeyId('e35a7d11-fef0-49ad-9f3e-aacbe0a42c42');
$keyCredentialsKeyCredential2->setStartDateTime(new \DateTime('2024-02-21T17:09:35Z'));
$keyCredentialsKeyCredential2->setType('AsymmetricX509Cert');
$keyCredentialsKeyCredential2->setUsage('Verify');
$keyCredentialsKeyCredential2->setKey(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('MIICqjCCAZKgAwIBAgIIZYCy..KlDixjUT61i4tFs=')));
$keyCredentialsKeyCredential2->setDisplayName('CN=AWSContoso');
$keyCredentialsArray []= $keyCredentialsKeyCredential2;
$requestBody->setKeyCredentials($keyCredentialsArray);

$passwordCredentialsPasswordCredential1 = new PasswordCredential();
$passwordCredentialsPasswordCredential1->setCustomKeyIdentifier(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A')));
$passwordCredentialsPasswordCredential1->setKeyId('4c266507-3e74-4b91-aeba-18a25b450f6e');
$passwordCredentialsPasswordCredential1->setEndDateTime(new \DateTime('2022-01-27T19:40:33Z'));
$passwordCredentialsPasswordCredential1->setStartDateTime(new \DateTime('2027-01-22T00:00:00Z'));
$passwordCredentialsPasswordCredential1->setSecretText('61891f4ee44d');
$passwordCredentialsArray []= $passwordCredentialsPasswordCredential1;
$requestBody->setPasswordCredentials($passwordCredentialsArray);


$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->patch($requestBody)->wait();

```