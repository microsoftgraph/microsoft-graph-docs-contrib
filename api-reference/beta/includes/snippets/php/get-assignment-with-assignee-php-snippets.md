---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\CloudLicensing\Assignments\Item\AssignmentItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AssignmentItemRequestBuilderGetRequestConfiguration();
$queryParameters = AssignmentItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["assignedTo"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->admin()->cloudLicensing()->assignments()->byAssignmentId('assignment-id')->get($requestConfiguration)->wait();

```