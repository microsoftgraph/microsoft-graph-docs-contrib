---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->directory()->inboundSharedUserProfiles()->byInboundSharedUserProfileUserId('inboundSharedUserProfile-userId')->removePersonalData()->post()->wait();

```