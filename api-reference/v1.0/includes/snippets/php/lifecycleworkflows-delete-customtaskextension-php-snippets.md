---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identityGovernance()->lifecycleWorkflows()->customTaskExtensions()->byCustomTaskExtensionId('customTaskExtension-id')->delete()->wait();

```