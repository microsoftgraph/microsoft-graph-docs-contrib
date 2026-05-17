---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WorkPlanRecurrence workPlanRecurrence = new WorkPlanRecurrence();
DateTimeTimeZone start = new DateTimeTimeZone();
start.setDateTime("2025-12-11T09:00:00.0000000");
start.setTimeZone("Pacific Standard Time");
workPlanRecurrence.setStart(start);
DateTimeTimeZone end = new DateTimeTimeZone();
end.setDateTime("2025-12-11T18:00:00.0000000");
end.setTimeZone("Pacific Standard Time");
workPlanRecurrence.setEnd(end);
workPlanRecurrence.setWorkLocationType(WorkLocationType.Office);
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.setType(RecurrencePatternType.Weekly);
pattern.setInterval(1);
pattern.setFirstDayOfWeek(DayOfWeek.Sunday);
LinkedList<DayOfWeek> daysOfWeek = new LinkedList<DayOfWeek>();
daysOfWeek.add(DayOfWeek.Thursday);
pattern.setDaysOfWeek(daysOfWeek);
recurrence.setPattern(pattern);
RecurrenceRange range = new RecurrenceRange();
range.setType(RecurrenceRangeType.NoEnd);
LocalDate startDate = LocalDate.parse("2025-12-11");
range.setStartDate(startDate);
range.setRecurrenceTimeZone("Pacific Standard Time");
recurrence.setRange(range);
workPlanRecurrence.setRecurrence(recurrence);
WorkPlanRecurrence result = graphClient.me().settings().workHoursAndLocations().recurrences().byWorkPlanRecurrenceId("{workPlanRecurrence-id}").put(workPlanRecurrence);


```