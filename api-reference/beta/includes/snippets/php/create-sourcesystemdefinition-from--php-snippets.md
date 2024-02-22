---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->external()->industryData()->sourceSystems()->bySourceSystemDefinitionId('sourceSystemDefinition-id')->delete()->wait();

```