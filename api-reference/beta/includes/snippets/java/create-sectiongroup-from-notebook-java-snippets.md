---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SectionGroup sectionGroup = new SectionGroup();
sectionGroup.setDisplayName("Section group name");
SectionGroup result = graphClient.me().onenote().notebooks().byNotebookId("{notebook-id}").sectionGroups().post(sectionGroup);


```