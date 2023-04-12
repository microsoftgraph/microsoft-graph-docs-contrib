---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ChatMessage();
$body = new ItemBody();
$body->setContentType(new BodyType('html'));

$body->setContent('<div><div><at id=\"0\">TestTag</at>&nbsp;Testing Tags</div></div>');


$requestBody->setBody($body);
$mentionsChatMessageMention1 = new ChatMessageMention();
$mentionsChatMessageMention1->setId(0);

$mentionsChatMessageMention1->setMentionText('TestTag');

$mentionsChatMessageMention1Mentioned = new ChatMessageMentionedIdentitySet();
$mentionsChatMessageMention1MentionedTag = new TeamworkTagIdentity();
$mentionsChatMessageMention1MentionedTag->setId('MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM2OGEzZTM2NS1mN2Q5LTRhNTYtYjQ5OS0yNDMzMmE5Y2M1NzIjI3RTMERJZ1Z1ZQ==');

$mentionsChatMessageMention1MentionedTag->setDisplayName('TestTag');


$mentionsChatMessageMention1Mentioned->setTag($mentionsChatMessageMention1MentionedTag);

$mentionsChatMessageMention1->setMentioned($mentionsChatMessageMention1Mentioned);

$mentionsArray []= $mentionsChatMessageMention1;
$requestBody->setMentions($mentionsArray);




$result = $graphServiceClient->teamsById('team-id')->channelsById('channel-id')->messages()->post($requestBody);


```