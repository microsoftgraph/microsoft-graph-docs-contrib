---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->admin()->serviceAnnouncement()->issues()->byServiceHealthIssueId('serviceHealthIssue-id')->incidentReport()->get()->wait();

```