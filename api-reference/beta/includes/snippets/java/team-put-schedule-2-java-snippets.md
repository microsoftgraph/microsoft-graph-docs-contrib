---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Schedule schedule = new Schedule();
schedule.setEnabled(true);
schedule.setTimeZone("America/Chicago");
schedule.setProvisionStatus(OperationStatus.Completed);
schedule.setProvisionStatusCode(null);
schedule.setOpenShiftsEnabled(true);
schedule.setSwapShiftsRequestsEnabled(true);
schedule.setOfferShiftRequestsEnabled(true);
schedule.setTimeOffRequestsEnabled(true);
schedule.setStartDayOfWeek(DayOfWeek.Tuesday);
schedule.setIsActivitiesIncludedWhenCopyingShiftsEnabled(true);
schedule.setIsCrossLocationShiftsEnabled(true);
schedule.setIsCrossLocationShiftRequestApprovalRequired(true);
schedule.setTimeClockEnabled(true);
Schedule result = graphClient.teams().byTeamId("{team-id}").schedule().put(schedule);


```