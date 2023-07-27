---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsexternalconnectors "github.com/microsoftgraph/msgraph-beta-sdk-go/models/externalconnectors"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsexternalconnectors.NewExternalItem()


acl := graphmodelsexternalconnectors.NewAcl()
type := graphmodels.EVERYONE_ACLTYPE 
acl.SetType(&type) 
value := "67a141d8-cf4e-4528-ba07-bed21bfacd2d"
acl.SetValue(&value) 
accessType := graphmodels.GRANT_ACCESSTYPE 
acl.SetAccessType(&accessType) 

acl := []graphmodelsexternalconnectors.Aclable {
	acl,
}
requestBody.SetAcl(acl)

result, err := graphClient.External().Connections().ByConnectionId("externalConnection-id").Items().ByItemId("externalItem-id").Put(context.Background(), requestBody, nil)


```