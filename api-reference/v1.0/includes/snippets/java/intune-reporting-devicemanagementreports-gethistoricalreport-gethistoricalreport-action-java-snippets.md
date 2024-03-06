---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.gethistoricalreport.GetHistoricalReportPostRequestBody getHistoricalReportPostRequestBody = new com.microsoft.graph.devicemanagement.reports.gethistoricalreport.GetHistoricalReportPostRequestBody();
getHistoricalReportPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getHistoricalReportPostRequestBody.setSelect(select);
getHistoricalReportPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getHistoricalReportPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getHistoricalReportPostRequestBody.setOrderBy(orderBy);
getHistoricalReportPostRequestBody.setSkip(4);
getHistoricalReportPostRequestBody.setTop(3);
getHistoricalReportPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getHistoricalReport().post(getHistoricalReportPostRequestBody);


```