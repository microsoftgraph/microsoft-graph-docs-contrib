---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Identity\B2cUserFlows\Item\UserAttributeAssignments\Item\IdentityUserFlowAttributeAssignmentItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new IdentityUserFlowAttributeAssignmentItemRequestBuilderGetRequestConfiguration();
$queryParameters = IdentityUserFlowAttributeAssignmentItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["userAttribute"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identity()->b2cUserFlows()->byB2cIdentityUserFlowId('b2cIdentityUserFlow-id')->userAttributeAssignments()->byIdentityUserFlowAttributeAssignmentId('identityUserFlowAttributeAssignment-id')->get($requestConfiguration)->wait();

```