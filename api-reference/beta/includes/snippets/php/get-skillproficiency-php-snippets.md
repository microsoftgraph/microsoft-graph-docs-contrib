---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->me()->profile()->skills()->bySkillProficiencyId('skillProficiency-id')->get()->wait();

```