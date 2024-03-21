---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->admin()->serviceAnnouncement()->issues()->byServiceHealthIssueId('serviceHealthIssue-id')->get()->wait();

```