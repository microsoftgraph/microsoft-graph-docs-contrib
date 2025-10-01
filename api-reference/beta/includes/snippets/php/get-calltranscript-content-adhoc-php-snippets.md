---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Users\Item\AdhocCalls\Item\Transcripts\Item\Content\ContentRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new ContentRequestBuilderGetRequestConfiguration();
$queryParameters = ContentRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->format = "text/vtt";
$requestConfiguration->queryParameters = $queryParameters;


$graphServiceClient->users()->byUserId('user-id')->adhocCalls()->byAdhocCallId('adhocCall-id')->transcripts()->byCallTranscriptId('callTranscript-id')->content()->get($requestConfiguration)->wait();

```