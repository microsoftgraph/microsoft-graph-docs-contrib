---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Group group = new Group();
LinkedList<AssignedLabel> assignedLabels = new LinkedList<AssignedLabel>();
AssignedLabel assignedLabel = new AssignedLabel();
assignedLabel.setLabelId("45cd0c48-c540-4358-ad79-a3658cdc5b88");
assignedLabels.add(assignedLabel);
group.setAssignedLabels(assignedLabels);
Group result = graphClient.groups().byGroupId("{group-id}").patch(group);


```