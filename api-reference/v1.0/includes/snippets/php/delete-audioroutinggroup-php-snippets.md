---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->communications()->calls()->byCallId('call-id')->audioRoutingGroups()->byAudioRoutingGroupId('audioRoutingGroup-id')->delete()->wait();

```