---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Application();
$keyCredentialsKeyCredential1 = new KeyCredential();
$keyCredentialsKeyCredential1->setEndDateTime(new DateTime('2024-01-11T15:31:26Z'));

$keyCredentialsKeyCredential1->setStartDateTime(new DateTime('2023-01-12T09:31:26Z'));

$keyCredentialsKeyCredential1->setType('AsymmetricX509Cert');

$keyCredentialsKeyCredential1->setUsage('Verify');

$keyCredentialsKeyCredential1->setKey(base64_decode('base64MIIDADCCAeigAwIBAgIQejfrj3S974xI//npv7hFHTANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExNDAeFw0yMzAxMTIwOTA4NThaFw0yNDAxMTIwOTI4NThaMBMxETAPBgNVBAMMCDIwMjMwMTE0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAt5vEj6j1l5wOVHR4eDGe77HWslaIVJ1NqxrXPm/...+R+U7sboj+kUvmFzXI+Ge73Liu8egL2NzOHHpO43calWgq36a9YW1yhBQR1ioEchu6jmudW3rF6ktmVqQ=='));

$keyCredentialsKeyCredential1->setDisplayName('CN=20230114');


$keyCredentialsArray []= $keyCredentialsKeyCredential1;
$keyCredentialsKeyCredential2 = new KeyCredential();
$keyCredentialsKeyCredential2->setCustomKeyIdentifier(base64_decode('52ED9B5038A47B9E2E2190715CC238359D4F8F73'));

$keyCredentialsKeyCredential2->setType('AsymmetricX509Cert');

$keyCredentialsKeyCredential2->setUsage('Verify');

$keyCredentialsKeyCredential2->setKey(base64_decode('base64MIIDADCCAeigAwIBAgIQfoIvchhpToxKEPI4iMrU1TANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAgyMDIzMDExMzAeFw0yMzAxMTIwODI3NTJaFw0yNDAxMTIwODQ3NTJaMBMxETAPBgNVBAMMCDIwMjMwMTEzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAw+iqg1nMjYmFcFJh/.../S5X6qoEOyJBgtfpSBANWAdA=='));

$keyCredentialsKeyCredential2->setDisplayName('CN=20230113');


$keyCredentialsArray []= $keyCredentialsKeyCredential2;
$requestBody->setKeyCredentials($keyCredentialsArray);




$result = $graphServiceClient->applicationsById('application-id')->patch($requestBody);


```