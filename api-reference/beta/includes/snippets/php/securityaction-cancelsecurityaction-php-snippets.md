---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->security()->securityActions()->bySecurityActionId('securityAction-id')->cancelSecurityAction()->post()->wait();

```