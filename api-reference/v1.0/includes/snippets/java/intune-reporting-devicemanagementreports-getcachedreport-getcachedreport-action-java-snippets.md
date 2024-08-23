---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getcachedreport.GetCachedReportPostRequestBody getCachedReportPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getcachedreport.GetCachedReportPostRequestBody();
getCachedReportPostRequestBody.setId("Id value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getCachedReportPostRequestBody.setSelect(select);
getCachedReportPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getCachedReportPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getCachedReportPostRequestBody.setOrderBy(orderBy);
getCachedReportPostRequestBody.setSkip(4);
getCachedReportPostRequestBody.setTop(3);
graphClient.deviceManagement().reports().getCachedReport().post(getCachedReportPostRequestBody);


```