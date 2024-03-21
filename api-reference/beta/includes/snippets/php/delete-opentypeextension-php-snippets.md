---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->me()->messages()->byMessageId('message-id')->extensions()->byExtensionId('extension-id')->delete()->wait();

```