---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Security\ThreatIntelligence\WhoisRecords\WhoisRecordsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new WhoisRecordsRequestBuilderGetRequestConfiguration();
$queryParameters = WhoisRecordsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->search = "\"admin/address/state:WA";
$queryParameters->orderby = ["registrationDateTime desc""];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->threatIntelligence()->whoisRecords()->get($requestConfiguration)->wait();

```