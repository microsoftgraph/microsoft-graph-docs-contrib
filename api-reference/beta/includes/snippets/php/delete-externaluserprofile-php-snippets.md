---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->directory()->externalUserProfiles()->byExternalUserProfileId('externalUserProfile-id')->delete()->wait();

```