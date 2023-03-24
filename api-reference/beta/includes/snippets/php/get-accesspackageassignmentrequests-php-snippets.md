---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AccessPackageAssignmentRequestsRequestBuilderGetRequestConfiguration();

$queryParameters = new AccessPackageAssignmentRequestsRequestBuilderGetQueryParameters();
$queryParameters->expand = ["requestor($expand=connectedOrganization)"];
$queryParameters->filter = "(requestState eq 'PendingApproval')";

$requestConfiguration->queryParameters = $queryParameters;


$requestResult = $graphServiceClient->identityGovernance()->entitlementManagement()->accessPackageAssignmentRequests()->get($requestConfiguration);


```