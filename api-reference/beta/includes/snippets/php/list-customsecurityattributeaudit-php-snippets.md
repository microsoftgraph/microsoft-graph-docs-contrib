---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CustomSecurityAttributeAuditsRequestBuilderGetRequestConfiguration();
$queryParameters = CustomSecurityAttributeAuditsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 1;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->auditLogs()->customSecurityAttributeAudits()->get($requestConfiguration)->wait();

```