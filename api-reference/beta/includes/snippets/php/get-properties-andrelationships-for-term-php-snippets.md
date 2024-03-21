---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->termStore()->groups()->byGroupId('group-id')->sets()->bySetId('set-id')->terms()->byTermId('term-id')->get()->wait();

```