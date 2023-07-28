---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InstantiatePostRequestBody();
$requestBody->setDisplayName('testProperties');



$result = $graphServiceClient->applicationTemplates()->byApplicationTemplateId('applicationTemplate-id')->instantiate()->post($requestBody);


```