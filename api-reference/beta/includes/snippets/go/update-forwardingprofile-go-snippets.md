---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsnetworkaccess.NewForwardingProfile()


association := graphmodelsnetworkaccess.NewAssociatedBranch()
branchId := "88e5a488-92c3-45d6-ba56-e5cfa63677e8"
association.SetBranchId(&branchId) 

associations := []graphmodelsnetworkaccess.Associationable {
	association,
}
requestBody.SetAssociations(associations)

result, err := graphClient.NetworkAccess().ForwardingProfiles().ByForwardingProfileId("forwardingProfile-id").Patch(context.Background(), requestBody, nil)


```