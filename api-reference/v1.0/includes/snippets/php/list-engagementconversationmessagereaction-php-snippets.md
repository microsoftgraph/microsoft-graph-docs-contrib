---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->communications()->onlineMeetingConversations()->byOnlineMeetingEngagementConversationId('onlineMeetingEngagementConversation-id')->messages()->byEngagementConversationMessageId('engagementConversationMessage-id')->reactions()->get()->wait();

```