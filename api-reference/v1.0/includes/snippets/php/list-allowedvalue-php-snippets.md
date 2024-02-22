---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->directory()->customSecurityAttributeDefinitions()->byCustomSecurityAttributeDefinitionId('customSecurityAttributeDefinition-id')->allowedValues()->get()->wait();

```