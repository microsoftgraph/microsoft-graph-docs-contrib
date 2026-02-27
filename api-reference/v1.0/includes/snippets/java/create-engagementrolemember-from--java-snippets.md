---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EngagementRoleMember engagementRoleMember = new EngagementRoleMember();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("user@odata.bind", "https://graph.microsoft.com/v1.0/users('e8d9f6a2-1c34-4b7a-9f11-2a4d8b7c9e01')");
engagementRoleMember.setAdditionalData(additionalData);
EngagementRoleMember result = graphClient.employeeExperience().roles().byEngagementRoleId("{engagementRole-id}").members().post(engagementRoleMember);


```