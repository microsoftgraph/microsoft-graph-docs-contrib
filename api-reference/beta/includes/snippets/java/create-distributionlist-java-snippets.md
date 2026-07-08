---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DistributionList distributionList = new DistributionList();
distributionList.setDisplayName("Project Team");
LinkedList<Member> members = new LinkedList<Member>();
Member member = new Member();
member.setDisplayName("Adele Vance");
member.setRecipientType(RecipientType.Mailbox);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("emailAddress", "AdeleV@contoso.com");
member.setAdditionalData(additionalData);
members.add(member);
Member member1 = new Member();
member1.setDisplayName("Alex Wilber");
member1.setRecipientType(RecipientType.Mailbox);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("emailAddress", "AlexW@contoso.com");
member1.setAdditionalData(additionalData1);
members.add(member1);
distributionList.setMembers(members);
DistributionList result = graphClient.me().distributionLists().post(distributionList);


```