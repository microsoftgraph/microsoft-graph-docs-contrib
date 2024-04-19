---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\AuditLogs\CustomSecurityAttributeAudits\CustomSecurityAttributeAuditsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new CustomSecurityAttributeAuditsRequestBuilderGetRequestConfiguration();
$queryParameters = CustomSecurityAttributeAuditsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->top = 1;
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->auditLogs()->customSecurityAttributeAudits()->get($requestConfiguration)->wait();

```