---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ServicePrincipal();
$keyCredentialsKeyCredential1 = new KeyCredential();
$keyCredentialsKeyCredential1->setCustomKeyIdentifier(base64_decode('lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA='));

$keyCredentialsKeyCredential1->setEndDateTime(new \DateTime('2021-04-22T22:10:13Z'));

$keyCredentialsKeyCredential1->setKeyId('4c266507-3e74-4b91-aeba-18a25b450f6e');

$keyCredentialsKeyCredential1->setStartDateTime(new \DateTime('2020-04-22T21:50:13Z'));

$keyCredentialsKeyCredential1->setType('X509CertAndPassword');

$keyCredentialsKeyCredential1->setUsage('Sign');

$keyCredentialsKeyCredential1->setKey(base64_decode('MIIKIAIBAz.....HBgUrDgMCERE20nuTptI9MEFCh2Ih2jaaLZBZGeZBRFVNXeZmAAgIH0A=='));

$keyCredentialsKeyCredential1->setDisplayName('CN=awsAPI');


$keyCredentialsArray []= $keyCredentialsKeyCredential1;
$keyCredentialsKeyCredential2 = new KeyCredential();
$keyCredentialsKeyCredential2->setCustomKeyIdentifier(base64_decode('lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA='));

$keyCredentialsKeyCredential2->setEndDateTime(new \DateTime('2021-04-22T22:10:13Z'));

$keyCredentialsKeyCredential2->setKeyId('e35a7d11-fef0-49ad-9f3e-aacbe0a42c42');

$keyCredentialsKeyCredential2->setStartDateTime(new \DateTime('2020-04-22T21:50:13Z'));

$keyCredentialsKeyCredential2->setType('AsymmetricX509Cert');

$keyCredentialsKeyCredential2->setUsage('Verify');

$keyCredentialsKeyCredential2->setKey(base64_decode('MIIDJzCCAg+gAw......CTxQvJ/zN3bafeesMSueR83hlCSyg=='));

$keyCredentialsKeyCredential2->setDisplayName('CN=awsAPI');


$keyCredentialsArray []= $keyCredentialsKeyCredential2;
$requestBody->setKeyCredentials($keyCredentialsArray);


$passwordCredentialsPasswordCredential1 = new PasswordCredential();
$passwordCredentialsPasswordCredential1->setCustomKeyIdentifier(base64_decode('lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA='));

$passwordCredentialsPasswordCredential1->setKeyId('4c266507-3e74-4b91-aeba-18a25b450f6e');

$passwordCredentialsPasswordCredential1->setEndDateTime(new \DateTime('2022-01-27T19:40:33Z'));

$passwordCredentialsPasswordCredential1->setStartDateTime(new \DateTime('2020-04-20T19:40:33Z'));

$passwordCredentialsPasswordCredential1->setSecretText('61891f4ee44d');


$passwordCredentialsArray []= $passwordCredentialsPasswordCredential1;
$requestBody->setPasswordCredentials($passwordCredentialsArray);




$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->patch($requestBody);


```