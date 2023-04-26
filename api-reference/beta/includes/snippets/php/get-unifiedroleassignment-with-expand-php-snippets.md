---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new UnifiedRoleAssignmentMultipleRequestBuilderGetRequestConfiguration();
$queryParameters = UnifiedRoleAssignmentMultipleRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["roleDefinition","principals","directoryScopes"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->roleManagement()->deviceManagement()->roleAssignmentsById('unifiedRoleAssignmentMultiple-id')->get($requestConfiguration);


```