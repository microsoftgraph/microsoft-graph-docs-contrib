---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkPlanOccurrence workPlanOccurrence = new WorkPlanOccurrence();
DateTimeTimeZone start = new DateTimeTimeZone();
start.setDateTime("2025-12-15T00:00:00.0000000");
start.setTimeZone("Pacific Standard Time");
workPlanOccurrence.setStart(start);
DateTimeTimeZone end = new DateTimeTimeZone();
end.setDateTime("2025-12-15T23:59:59.0000000");
end.setTimeZone("Pacific Standard Time");
workPlanOccurrence.setEnd(end);
workPlanOccurrence.setWorkLocationType(WorkLocationType.TimeOff);
TimeOffDetails timeOffDetails = new TimeOffDetails();
timeOffDetails.setSubject("Personal Day");
timeOffDetails.setIsAllDay(false);
workPlanOccurrence.setTimeOffDetails(timeOffDetails);
WorkPlanOccurrence result = graphClient.me().settings().workHoursAndLocations().occurrences().post(workPlanOccurrence);


```