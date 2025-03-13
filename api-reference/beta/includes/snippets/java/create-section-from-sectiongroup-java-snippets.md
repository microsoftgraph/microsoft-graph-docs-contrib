---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnenoteSection onenoteSection = new OnenoteSection();
onenoteSection.setDisplayName("Section name");
OnenoteSection result = graphClient.me().onenote().sectionGroups().bySectionGroupId("{sectionGroup-id}").sections().post(onenoteSection);


```