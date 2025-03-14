---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->external()->industryData()->sourceSystems()->bySourceSystemDefinitionId('sourceSystemDefinition-id')->delete()->wait();

```