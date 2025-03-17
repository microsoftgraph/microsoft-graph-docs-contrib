---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->external()->industryData()->referenceDefinitions()->byReferenceDefinitionId('referenceDefinition-id')->delete()->wait();

```