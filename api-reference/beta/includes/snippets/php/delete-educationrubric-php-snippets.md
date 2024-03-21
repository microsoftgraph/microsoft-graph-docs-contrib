---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->education()->me()->rubrics()->byEducationRubricId('educationRubric-id')->delete()->wait();

```