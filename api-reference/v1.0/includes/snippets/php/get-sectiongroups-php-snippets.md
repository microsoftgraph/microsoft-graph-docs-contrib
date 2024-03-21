---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->me()->onenote()->sectionGroups()->bySectionGroupId('sectionGroup-id')->sectionGroups()->get()->wait();

```