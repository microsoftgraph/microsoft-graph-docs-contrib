---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CertificateBasedAuthConfiguration;
use Microsoft\Graph\Beta\Generated\Models\CertificateAuthority;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CertificateBasedAuthConfiguration();
$certificateAuthoritiesCertificateAuthority1 = new CertificateAuthority();
$certificateAuthoritiesCertificateAuthority1->setIsRootAuthority(true);
$certificateAuthoritiesCertificateAuthority1->setCertificate(\GuzzleHttp\Psr7\Utils::streamFor(base64_decode('Binary')));
$certificateAuthoritiesArray []= $certificateAuthoritiesCertificateAuthority1;
$requestBody->setCertificateAuthorities($certificateAuthoritiesArray);


$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->certificateBasedAuthConfiguration()->post($requestBody)->wait();

```