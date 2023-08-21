---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CertificateBasedAuthConfiguration();
$certificateAuthoritiesCertificateAuthority1 = new CertificateAuthority();
$certificateAuthoritiesCertificateAuthority1->setIsRootAuthority(true);

$certificateAuthoritiesCertificateAuthority1->setCertificate(base64_decode('Binary'));


$certificateAuthoritiesArray []= $certificateAuthoritiesCertificateAuthority1;
$requestBody->setCertificateAuthorities($certificateAuthoritiesArray);




$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->certificateBasedAuthConfiguration()->post($requestBody);


```