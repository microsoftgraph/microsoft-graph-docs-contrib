---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->privacy()->subjectRightsRequests()->bySubjectRightsRequestId('subjectRightsRequest-id')->notes()->get()->wait();

```