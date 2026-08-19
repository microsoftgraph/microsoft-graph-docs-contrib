---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.distributionlists.item.addmembers.AddMembersPostRequestBody addMembersPostRequestBody = new com.microsoft.graph.beta.users.item.distributionlists.item.addmembers.AddMembersPostRequestBody();
LinkedList<Member> members = new LinkedList<Member>();
Member member = new Member();
member.setDisplayName("Megan Bowen");
member.setKey("MeganB@contoso.com");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("type", "mailbox");
member.setAdditionalData(additionalData);
members.add(member);
addMembersPostRequestBody.setMembers(members);
var result = graphClient.me().distributionLists().byDistributionListId("{distributionList-id}").addMembers().post(addMembersPostRequestBody);


```