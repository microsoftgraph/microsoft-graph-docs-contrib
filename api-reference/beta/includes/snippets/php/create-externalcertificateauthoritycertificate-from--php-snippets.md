---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\ExternalCertificateAuthorityCertificate;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalCertificateAuthorityCertificate();
$requestBody->setOdataType('#microsoft.graph.networkaccess.externalCertificateAuthorityCertificate');
$requestBody->setName('Contoso Enterprise CA');
$requestBody->setCommonName('Contoso Enterprise Root CA');
$requestBody->setOrganizationName('Contoso Ltd');

$result = $graphServiceClient->networkAccess()->tls()->externalCertificateAuthorityCertificates()->post($requestBody)->wait();

```