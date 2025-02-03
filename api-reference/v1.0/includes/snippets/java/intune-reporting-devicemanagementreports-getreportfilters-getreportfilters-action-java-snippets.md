---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getreportfilters.GetReportFiltersPostRequestBody getReportFiltersPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getreportfilters.GetReportFiltersPostRequestBody();
getReportFiltersPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getReportFiltersPostRequestBody.setSelect(select);
getReportFiltersPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getReportFiltersPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getReportFiltersPostRequestBody.setOrderBy(orderBy);
getReportFiltersPostRequestBody.setSkip(4);
getReportFiltersPostRequestBody.setTop(3);
getReportFiltersPostRequestBody.setSessionId("Session Id value");
getReportFiltersPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getReportFilters().post(getReportFiltersPostRequestBody);


```