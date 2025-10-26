---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EngagementRoleMember engagementRoleMember = new EngagementRoleMember();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("user@odata.bind", "https://graph.microsoft.com/beta/users('userId')");
engagementRoleMember.setAdditionalData(additionalData);
EngagementRoleMember result = graphClient.employeeExperience().roles().byEngagementRoleId("{engagementRole-id}").members().post(engagementRoleMember);


```