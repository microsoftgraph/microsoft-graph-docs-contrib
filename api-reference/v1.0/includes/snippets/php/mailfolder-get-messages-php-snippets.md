---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->me()->mailFolders()->byMailFolderId('mailFolder-id')->messages()->get()->wait();

```