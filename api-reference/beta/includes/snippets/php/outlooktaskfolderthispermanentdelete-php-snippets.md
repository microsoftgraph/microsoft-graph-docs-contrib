---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->users()->byUserId('user-id')->outlook()->taskFolders()->byOutlookTaskFolderId('outlookTaskFolder-id')->permanentDelete()->post()->wait();

```