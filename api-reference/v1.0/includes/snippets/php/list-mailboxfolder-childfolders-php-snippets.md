---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->admin()->exchange()->mailboxes()->byMailboxId('mailbox-id')->folders()->byMailboxFolderId('mailboxFolder-id')->childFolders()->get()->wait();

```