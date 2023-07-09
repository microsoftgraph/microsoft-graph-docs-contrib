---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CategoryTemplate();
$requestBody->set@odatatype('#microsoft.graph.security.categoryTemplate');

$requestBody->setDisplayName('String');

$createdBy = new IdentitySet();
$createdBy->set@odatatype('microsoft.graph.identitySet');


$requestBody->setCreatedBy($createdBy);


$result = $graphServiceClient->security()->labels()->categories()->post($requestBody);


```