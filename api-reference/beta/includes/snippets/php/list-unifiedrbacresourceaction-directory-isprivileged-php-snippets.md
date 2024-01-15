---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ResourceActionsRequestBuilderGetRequestConfiguration();
$queryParameters = ResourceActionsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "isPrivileged eq true";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->roleManagement()->directory()->resourceNamespaces()->byUnifiedRbacResourceNamespaceId('unifiedRbacResourceNamespace-id')->resourceActions()->get($requestConfiguration)->wait();

```