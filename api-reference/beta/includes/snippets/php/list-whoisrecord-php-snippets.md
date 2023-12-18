---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new WhoisRecordsRequestBuilderGetRequestConfiguration();
$queryParameters = WhoisRecordsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->search = "\"admin/address/state:WA";
$queryParameters->orderby = ["registrationDateTime desc""];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->threatIntelligence()->whoisRecords()->get($requestConfiguration)->wait();

```