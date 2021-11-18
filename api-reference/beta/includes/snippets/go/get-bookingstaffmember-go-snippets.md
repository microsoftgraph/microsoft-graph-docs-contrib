---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

bookingBusinessId := "bookingBusiness-id"
bookingStaffMemberId := "bookingStaffMember-id"
result, err := graphClient.BookingBusinessesById(&bookingBusinessId).StaffMembersById(&bookingStaffMemberId).Get(options)


```