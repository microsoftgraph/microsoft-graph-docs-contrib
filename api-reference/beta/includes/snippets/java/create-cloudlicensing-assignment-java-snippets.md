---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.cloudlicensing.Assignment assignment = new com.microsoft.graph.beta.models.cloudlicensing.Assignment();
assignment.setOdataType("#microsoft.graph.cloudLicensing.assignment");
LinkedList<UUID> disabledServicePlanIds = new LinkedList<UUID>();
disabledServicePlanIds.add(UUID.fromString("bed136c6-b799-4462-824d-fc045d3a9d25"));
assignment.setDisabledServicePlanIds(disabledServicePlanIds);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("allotment@odata.bind", "https://graph.microsoft.com/beta/admin/cloudLicensing/allotments/rkocgef3dgjhnu3gmu2mqhbdbmwcymnf6fk3k6a7zbui5e7gfpmi");
additionalData.put("assignedTo@odata.bind", "https://graph.microsoft.com/beta/users/6d645c5f-089f-40d8-b0e7-136fb5c56d5b");
assignment.setAdditionalData(additionalData);
com.microsoft.graph.models.cloudlicensing.Assignment result = graphClient.admin().cloudLicensing().assignments().post(assignment);


```