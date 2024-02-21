---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Team team = new Team();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("template@odata.bind", "https://graph.microsoft.com/v1.0/teamsTemplates('standard')");
additionalData.put("group@odata.bind", "https://graph.microsoft.com/v1.0/groups('71392b2f-1765-406e-86af-5907d9bdb2ab')");
team.setAdditionalData(additionalData);
Team result = graphClient.teams().post(team);


```