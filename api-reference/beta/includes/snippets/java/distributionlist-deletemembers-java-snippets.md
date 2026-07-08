---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.distributionlists.item.deletemembers.DeleteMembersPostRequestBody deleteMembersPostRequestBody = new com.microsoft.graph.beta.users.item.distributionlists.item.deletemembers.DeleteMembersPostRequestBody();
LinkedList<Member> members = new LinkedList<Member>();
Member member = new Member();
member.setKey("MeganB@contoso.com");
member.setRoutingType("SMTP");
member.setRecipientType(RecipientType.Contact);
members.add(member);
deleteMembersPostRequestBody.setMembers(members);
var result = graphClient.me().distributionLists().byDistributionListId("{distributionList-id}").deleteMembers().post(deleteMembersPostRequestBody);


```