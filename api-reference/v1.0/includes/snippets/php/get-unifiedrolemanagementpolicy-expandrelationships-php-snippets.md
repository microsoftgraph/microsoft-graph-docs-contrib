---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UnifiedRoleManagementPolicyRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleManagementPolicyRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["effectiveRules","rules"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->policies()->roleManagementPoliciesById('unifiedRoleManagementPolicy-id')->get($requestConfiguration);


```