---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Security\ThreatIntelligence\Hosts\Item\SslCertificates\SslCertificatesRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SslCertificatesRequestBuilderGetRequestConfiguration();
$queryParameters = SslCertificatesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->count = true;
$queryParameters->top = 1;
$queryParameters->skip = 5;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->threatIntelligence()->hosts()->byHostId('host-id')->sslCertificates()->get($requestConfiguration)->wait();

```