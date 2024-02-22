---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->me()->onenote()->pages()->byOnenotePageId('onenotePage-id')->delete()->wait();

```