---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\CloudLicensing\Allotments\AllotmentsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AllotmentsRequestBuilderGetRequestConfiguration();
$queryParameters = AllotmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->select = ["id","allottedUnits","consumedUnits","assignableTo"];
$queryParameters->expand = ["waitingMembers(\$select=id,waitingSinceDateTime)"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->admin()->cloudLicensing()->allotments()->get($requestConfiguration)->wait();

```