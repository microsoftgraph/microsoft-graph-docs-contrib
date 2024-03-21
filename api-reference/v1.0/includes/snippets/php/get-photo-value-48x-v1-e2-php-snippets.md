---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->me()->photos()->byProfilePhotoId('profilePhoto-id')->content()->get()->wait();

```