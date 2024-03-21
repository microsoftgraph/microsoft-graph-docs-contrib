---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AccessPackageAssignmentRequestsRequestBuilderGetRequestConfiguration();
$queryParameters = AccessPackageAssignmentRequestsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["requestor(\$expand=connectedOrganization)"];
$queryParameters->filter = "(requestState eq 'PendingApproval')";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentRequests()->get($requestConfiguration)->wait();

```