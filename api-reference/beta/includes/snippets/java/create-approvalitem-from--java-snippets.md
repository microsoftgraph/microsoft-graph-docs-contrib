---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ApprovalItem approvalItem = new ApprovalItem();
LinkedList<ApprovalIdentitySet> approvers = new LinkedList<ApprovalIdentitySet>();
ApprovalIdentitySet approvalIdentitySet = new ApprovalIdentitySet();
Identity user = new Identity();
user.setId("39d1a7fb-5f54-4c89-b513-241683718c9b");
user.setDisplayName("Jana Pihlak");
approvalIdentitySet.setUser(user);
approvers.add(approvalIdentitySet);
ApprovalIdentitySet approvalIdentitySet1 = new ApprovalIdentitySet();
Identity group = new Identity();
group.setId("f2926053-5479-4bce-ad4c-8394ce51d6c5");
approvalIdentitySet1.setGroup(group);
approvers.add(approvalIdentitySet1);
approvalItem.setApprovers(approvers);
approvalItem.setDisplayName("Title of approval");
approvalItem.setDescription("Details of approval");
approvalItem.setApprovalType(ApprovalItemType.Basic);
approvalItem.setAllowEmailNotification(true);
ApprovalItem result = graphClient.solutions().approval().approvalItems().post(approvalItem);


```