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



staffMembers, err := graphClient.Solutions().BookingBusinesses().ByBookingBusinessId("bookingBusiness-id").StaffMembers().ByBookingStaffMemberBaseId("bookingStaffMemberBase-id").Get(context.Background(), nil)


```