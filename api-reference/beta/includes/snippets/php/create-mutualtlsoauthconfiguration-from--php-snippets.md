---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\MutualTlsOauthConfiguration;
use Microsoft\Graph\Beta\Generated\Models\TlsClientRegistrationMetadata;
use Microsoft\Graph\Beta\Generated\Models\CertificateAuthority;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new MutualTlsOauthConfiguration();
$requestBody->setDisplayName('DoorCamera_Model_X_TrustedCAs');
$requestBody->setTlsClientAuthParameter(new TlsClientRegistrationMetadata('tls_client_auth_san_uri'));
$certificateAuthoritiesCertificateAuthority1 = new CertificateAuthority();
$certificateAuthoritiesCertificateAuthority1->setOdataType('microsoft.graph.certificateAuthority');
$certificateAuthoritiesArray []= $certificateAuthoritiesCertificateAuthority1;
$requestBody->setCertificateAuthorities($certificateAuthoritiesArray);


$result = $graphServiceClient->directory()->certificateAuthorities()->mutualTlsOauthConfigurations()->post($requestBody)->wait();

```