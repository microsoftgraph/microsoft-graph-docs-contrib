---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ShiftPreferences shiftPreferences = new ShiftPreferences();
shiftPreferences.setId("SHPR_eeab4fb1-20e5-48ca-ad9b-98119d94bee7");
LinkedList<ShiftAvailability> availability = new LinkedList<ShiftAvailability>();
ShiftAvailability shiftAvailability = new ShiftAvailability();
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.setType(RecurrencePatternType.Weekly);
LinkedList<DayOfWeek> daysOfWeek = new LinkedList<DayOfWeek>();
daysOfWeek.add(DayOfWeek.Monday);
daysOfWeek.add(DayOfWeek.Wednesday);
daysOfWeek.add(DayOfWeek.Friday);
pattern.setDaysOfWeek(daysOfWeek);
pattern.setInterval(1);
recurrence.setPattern(pattern);
RecurrenceRange range = new RecurrenceRange();
range.setType(RecurrenceRangeType.NoEnd);
recurrence.setRange(range);
shiftAvailability.setRecurrence(recurrence);
shiftAvailability.setTimeZone("Pacific Standard Time");
shiftAvailability.setTimeSlots(null);
availability.add(shiftAvailability);
shiftPreferences.setAvailability(availability);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.etag", "1a371e53-f0a6-4327-a1ee-e3c56e4b38aa");
shiftPreferences.setAdditionalData(additionalData);
ShiftPreferences result = graphClient.users().byUserId("{user-id}").settings().shiftPreferences().patch(shiftPreferences);


```