---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->employeeExperience()->engagementAsyncOperations()->byEngagementAsyncOperationId('engagementAsyncOperation-id')->get()->wait();

```