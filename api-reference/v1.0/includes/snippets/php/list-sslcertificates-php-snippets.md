---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new SslCertificatesRequestBuilderGetRequestConfiguration();
$queryParameters = SslCertificatesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->search = "\"subject/commonName:microsoft.com\"";
$queryParameters->count = true;
$queryParameters->top = 1;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->threatIntelligence()->sslCertificates()->get($requestConfiguration)->wait();

```