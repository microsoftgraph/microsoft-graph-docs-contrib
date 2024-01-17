---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->sites()->bySiteId('site-id')->pages()->byBaseSitePageId('baseSitePage-id')->graphSitePage()->webParts()->byWebPartId('webPart-id')->delete()->wait();

```