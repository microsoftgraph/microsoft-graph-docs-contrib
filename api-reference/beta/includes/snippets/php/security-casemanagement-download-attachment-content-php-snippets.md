---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->security()->caseManagement()->cases()->byCaseId('case-id')->attachments()->byAttachmentId('attachment-id')->content()->get()->wait();

```