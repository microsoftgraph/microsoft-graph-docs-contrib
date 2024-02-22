---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->schemaExtensions()->bySchemaExtensionId('schemaExtension-id')->get()->wait();

```