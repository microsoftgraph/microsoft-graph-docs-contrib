---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ProjectParticipation projectParticipation = new ProjectParticipation();
projectParticipation.setAllowedAudiences(EnumSet.of(AllowedAudiences.Organization));
CompanyDetail client = new CompanyDetail();
client.setDepartment("Corporate Marketing");
client.setWebUrl("https://www.contoso.com");
projectParticipation.setClient(client);
ProjectParticipation result = graphClient.me().profile().projects().byProjectParticipationId("{projectParticipation-id}").patch(projectParticipation);


```