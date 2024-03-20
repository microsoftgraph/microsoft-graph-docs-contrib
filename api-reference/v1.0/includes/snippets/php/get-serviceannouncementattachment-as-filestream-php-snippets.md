---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->admin()->serviceAnnouncement()->messages()->byServiceUpdateMessageId('serviceUpdateMessage-id')->attachments()->byServiceAnnouncementAttachmentId('serviceAnnouncementAttachment-id')->content()->get()->wait();

```