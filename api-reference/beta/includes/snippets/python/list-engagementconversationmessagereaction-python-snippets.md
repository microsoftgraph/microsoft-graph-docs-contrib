---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.communications.online_meeting_conversations.by_online_meeting_engagement_conversation_id('onlineMeetingEngagementConversation-id').messages.by_engagement_conversation_message_id('engagementConversationMessage-id').reactions.get()


```