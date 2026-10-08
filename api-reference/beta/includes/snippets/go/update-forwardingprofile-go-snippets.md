---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

requestBody := graphmodelsnetworkaccess.NewForwardingProfile()


association := graphmodelsnetworkaccess.NewAssociatedBranch()
branchId := "88e5a488-92c3-45d6-ba56-e5cfa63677e8"
association.SetBranchId(&branchId) 

associations := []graphmodelsnetworkaccess.Associationable {
	association,
}
requestBody.SetAssociations(associations)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
forwardingProfiles, err := graphClient.NetworkAccess().ForwardingProfiles().ByForwardingProfileId("forwardingProfile-id").Patch(context.Background(), requestBody, nil)


```