---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DistributionListMember result = graphClient.me().distributionLists().byDistributionListId("{distributionList-id}").distributionListMembers().byDistributionListMemberId("{distributionListMember-id}").get();


```