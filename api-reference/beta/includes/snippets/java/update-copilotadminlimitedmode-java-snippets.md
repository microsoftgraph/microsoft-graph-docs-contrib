---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CopilotAdminLimitedMode copilotAdminLimitedMode = new CopilotAdminLimitedMode();
copilotAdminLimitedMode.setOdataType("#microsoft.graph.copilotAdminLimitedMode");
copilotAdminLimitedMode.setIsEnabledForGroup(true);
copilotAdminLimitedMode.setGroupId("4c563cdf-0efa-44c5-a384-dbf57db277df");
CopilotAdminLimitedMode result = graphClient.copilot().admin().settings().limitedMode().patch(copilotAdminLimitedMode);


```