---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CertificateBasedAuthConfigurationPostRequestBody();
$additionalData = [
		'certificateAuthorities' => $certificateAuthorities1 = new ();
		$certificateAuthorities1->setIsRootAuthority(true);

$		certificateAuthorities1->setCertificate('Binary');


$certificateAuthoritiesArray []= $certificateAuthorities1;
$requestBody->setCertificateAuthorities($certificateAuthoritiesArray);


];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->organizationById('organization-id')->certificateBasedAuthConfiguration()->post($requestBody);


```