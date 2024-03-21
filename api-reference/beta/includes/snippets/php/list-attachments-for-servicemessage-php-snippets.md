---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->admin()->serviceAnnouncement()->messages()->byServiceUpdateMessageId('serviceUpdateMessage-id')->attachments()->get()->wait();

```