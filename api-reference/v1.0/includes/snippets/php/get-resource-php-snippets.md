---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->me()->onenote()->resources()->byOnenoteResourceId('onenoteResource-id')->content()->get()->wait();

```