---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Group group = new Group();
group.setDescription("Library Assist - ADC");
group.setDisplayName("Library Assist - ADC");
group.setMailNickname("library-help-adc");
Group result = graphClient.groups().byGroupId("{group-id}").patch(group);


```