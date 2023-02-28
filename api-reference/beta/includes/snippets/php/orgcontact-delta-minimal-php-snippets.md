---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new OrgContactRequestBuilderGetRequestConfiguration();

$queryParameters = new OrgContactRequestBuilderGetQueryParameters();
$queryParameters->select = ["displayName","jobTitle","mail"];

$headers = [
'Prefer' => 'return=minimal',
];

$requestConfiguration->queryParameters = $queryParameters;
$requestConfiguration->headers = $headers;


$requestResult = $graphServiceClient->contactsById('orgContact-id')->get($requestConfiguration);


```