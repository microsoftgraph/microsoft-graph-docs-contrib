---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestConfiguration = new TagRequestBuilderDeleteRequestConfiguration();
$queryParameters = TagRequestBuilderDeleteRequestConfiguration::createQueryParameters();
$queryParameters->forcedelete = true;
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->compliance()->ediscovery()->casesById('case-id')->tagsById('tag-id')->delete($requestConfiguration);


```