---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.copilot.users.by_ai_user_id('aiUser-id').online_meetings.by_ai_online_meeting_id('aiOnlineMeeting-id').ai_insights.by_call_ai_insight_id('callAiInsight-id').get()


```