---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getpolicynoncompliancemetadata.GetPolicyNonComplianceMetadataPostRequestBody getPolicyNonComplianceMetadataPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getpolicynoncompliancemetadata.GetPolicyNonComplianceMetadataPostRequestBody();
getPolicyNonComplianceMetadataPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getPolicyNonComplianceMetadataPostRequestBody.setSelect(select);
getPolicyNonComplianceMetadataPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getPolicyNonComplianceMetadataPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getPolicyNonComplianceMetadataPostRequestBody.setOrderBy(orderBy);
getPolicyNonComplianceMetadataPostRequestBody.setSkip(4);
getPolicyNonComplianceMetadataPostRequestBody.setTop(3);
getPolicyNonComplianceMetadataPostRequestBody.setSessionId("Session Id value");
getPolicyNonComplianceMetadataPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getPolicyNonComplianceMetadata().post(getPolicyNonComplianceMetadataPostRequestBody);


```