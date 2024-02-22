---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->external()->industryData()->referenceDefinitions()->byReferenceDefinitionId('referenceDefinition-id')->get()->wait();

```