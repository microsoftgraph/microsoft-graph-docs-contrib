---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CallAiInsight result = graphClient.copilot().users().byAiUserId("{aiUser-id}").onlineMeetings().byAiOnlineMeetingId("{aiOnlineMeeting-id}").aiInsights().byCallAiInsightId("{callAiInsight-id}").get();


```