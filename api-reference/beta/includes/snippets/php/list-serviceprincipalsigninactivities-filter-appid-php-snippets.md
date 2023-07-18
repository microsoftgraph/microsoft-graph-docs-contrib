---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ServicePrincipalSignInActivitiesRequestBuilderGetRequestConfiguration();
$queryParameters = ServicePrincipalSignInActivitiesRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "appId eq 'f4d9654f-0305-4072-878c-8bf266dfe146'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->reports()->servicePrincipalSignInActivities()->get($requestConfiguration);


```