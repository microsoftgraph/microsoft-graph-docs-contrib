---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->labels()->filePlanReferences()->byFilePlanReferenceTemplateId('filePlanReferenceTemplate-id')->get()->wait();

```