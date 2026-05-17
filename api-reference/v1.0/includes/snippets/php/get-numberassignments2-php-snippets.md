---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Admin\Teams\TelephoneNumberManagement\NumberAssignments\NumberAssignmentsRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new NumberAssignmentsRequestBuilderGetRequestConfiguration();
$queryParameters = NumberAssignmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "assignmentStatus eq 'unassigned' and capabilities/any(c:c eq 'userAssignment')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->admin()->teams()->telephoneNumberManagement()->numberAssignments()->get($requestConfiguration)->wait();

```