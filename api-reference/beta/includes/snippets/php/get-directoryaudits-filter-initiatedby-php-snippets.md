---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\AuditLogs\DirectoryAudits\DirectoryAuditsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new DirectoryAuditsRequestBuilderGetRequestConfiguration();
$queryParameters = DirectoryAuditsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "initiatedBy/user/id eq '00000000-0000-0000-0000-000000000000'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->auditLogs()->directoryAudits()->get($requestConfiguration)->wait();

```