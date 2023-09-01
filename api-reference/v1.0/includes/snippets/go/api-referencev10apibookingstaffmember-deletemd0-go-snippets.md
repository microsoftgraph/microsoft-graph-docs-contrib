---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.Solutions().BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").StaffMembers().ByBookingStaffMemberBaseId("bookingStaffMemberBase-id").Delete(context.Background(), nil)


```