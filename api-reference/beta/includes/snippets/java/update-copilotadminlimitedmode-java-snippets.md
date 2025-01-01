---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CopilotAdminLimitedMode copilotAdminLimitedMode = new CopilotAdminLimitedMode();
copilotAdminLimitedMode.setOdataType("#microsoft.graph.copilotAdminLimitedMode");
copilotAdminLimitedMode.setIsEnabledForGroup(boolean);
copilotAdminLimitedMode.setGroupId("String");
CopilotAdminLimitedMode result = graphClient.copilot().admin().settings().limitedMode().patch(copilotAdminLimitedMode);


```