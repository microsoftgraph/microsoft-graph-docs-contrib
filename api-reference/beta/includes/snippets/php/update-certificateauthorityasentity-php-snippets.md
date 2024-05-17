---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\CertificateAuthorityAsEntity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CertificateAuthorityAsEntity();
$requestBody->setIsRootAuthority(true);

$result = $graphServiceClient->directory()->certificateAuthorities()->certificateBasedApplicationConfigurations()->byCertificateBasedApplicationConfigurationId('certificateBasedApplicationConfiguration-id')->trustedCertificateAuthorities()->byCertificateAuthorityAsEntityId('certificateAuthorityAsEntity-id')->patch($requestBody)->wait();

```