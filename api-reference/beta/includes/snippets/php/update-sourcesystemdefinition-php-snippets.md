---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SourceSystemDefinition();
$requestBody->setVendor('LMS Vendor');

$result = $graphServiceClient->external()->industryData()->sourceSystems()->bySourceSystemDefinitionId('sourceSystemDefinition-id')->patch($requestBody)->wait();

```