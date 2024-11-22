---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\CertificateAuthorityDetail;
use Microsoft\Graph\Beta\Generated\Models\CertificateAuthorityType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CertificateAuthorityDetail();
$requestBody->setCertificateAuthorityType(new CertificateAuthorityType('intermediate'));

$result = $graphServiceClient->directory()->publicKeyInfrastructure()->certificateBasedAuthConfigurations()->byCertificateBasedAuthPkiId('certificateBasedAuthPki-id')->certificateAuthorities()->post($requestBody)->wait();

```