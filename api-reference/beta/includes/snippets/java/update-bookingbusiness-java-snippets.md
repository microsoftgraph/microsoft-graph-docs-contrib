---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BookingBusiness bookingBusiness = new BookingBusiness();
bookingBusiness.setEmail("admin@fabrikam.com");
BookingSchedulingPolicy schedulingPolicy = new BookingSchedulingPolicy();
PeriodAndDuration timeSlotInterval = PeriodAndDuration.ofDuration(Duration.parse("PT60M"));
schedulingPolicy.setTimeSlotInterval(timeSlotInterval);
PeriodAndDuration minimumLeadTime = PeriodAndDuration.ofDuration(Duration.parse("P1D"));
schedulingPolicy.setMinimumLeadTime(minimumLeadTime);
PeriodAndDuration maximumAdvance = PeriodAndDuration.ofDuration(Duration.parse("P30D"));
schedulingPolicy.setMaximumAdvance(maximumAdvance);
schedulingPolicy.setSendConfirmationsToOwner(true);
schedulingPolicy.setAllowStaffSelection(true);
bookingBusiness.setSchedulingPolicy(schedulingPolicy);
BookingBusiness result = graphClient.solutions().bookingBusinesses().byBookingBusinessId("{bookingBusiness-id}").patch(bookingBusiness);


```