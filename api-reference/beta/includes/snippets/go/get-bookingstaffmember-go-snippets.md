---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



staffMembers, err := graphClient.BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").StaffMembers().ByBookingStaffMemberId("bookingStaffMember-id").Get(context.Background(), nil)


```