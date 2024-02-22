---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->me()->profile()->languages()->byLanguageProficiencyId('languageProficiency-id')->get()->wait();

```