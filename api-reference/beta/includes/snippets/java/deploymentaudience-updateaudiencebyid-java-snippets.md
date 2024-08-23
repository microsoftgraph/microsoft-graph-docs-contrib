---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.windows.updates.deployments.item.audience.microsoftgraphwindowsupdatesupdateaudiencebyid.UpdateAudienceByIdPostRequestBody updateAudienceByIdPostRequestBody = new com.microsoft.graph.beta.admin.windows.updates.deployments.item.audience.microsoftgraphwindowsupdatesupdateaudiencebyid.UpdateAudienceByIdPostRequestBody();
updateAudienceByIdPostRequestBody.setMemberEntityType("String");
LinkedList<String> addMembers = new LinkedList<String>();
addMembers.add("String");
updateAudienceByIdPostRequestBody.setAddMembers(addMembers);
LinkedList<String> removeMembers = new LinkedList<String>();
removeMembers.add("String");
updateAudienceByIdPostRequestBody.setRemoveMembers(removeMembers);
LinkedList<String> addExclusions = new LinkedList<String>();
addExclusions.add("String");
updateAudienceByIdPostRequestBody.setAddExclusions(addExclusions);
LinkedList<String> removeExclusions = new LinkedList<String>();
removeExclusions.add("String");
updateAudienceByIdPostRequestBody.setRemoveExclusions(removeExclusions);
graphClient.admin().windows().updates().deployments().byDeploymentId("{deployment-id}").audience().microsoftGraphWindowsUpdatesUpdateAudienceById().post(updateAudienceByIdPostRequestBody);


```