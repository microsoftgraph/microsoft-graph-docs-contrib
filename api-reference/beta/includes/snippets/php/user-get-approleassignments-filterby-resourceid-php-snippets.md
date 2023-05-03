---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new AppRoleAssignmentsRequestBuilderGetRequestConfiguration();
$queryParameters = AppRoleAssignmentsRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "resourceId eq 8e881353-1735-45af-af21-ee1344582a4d";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->usersById('user-id')->appRoleAssignments()->get($requestConfiguration);


```