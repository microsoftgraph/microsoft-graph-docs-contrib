---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->termStore()->sets()->bySetId('set-id')->terms()->byTermId('term-id')->delete()->wait();

```