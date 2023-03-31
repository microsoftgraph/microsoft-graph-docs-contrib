---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models//externalConnectors"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewExternalItem()


acl := graphmodels.NewAcl()
type := graphmodels.EVERYONE_ACLTYPE 
acl.SetType(&type) 
value := "67a141d8-cf4e-4528-ba07-bed21bfacd2d"
acl.SetValue(&value) 
accessType := graphmodels.GRANT_ACCESSTYPE 
acl.SetAccessType(&accessType) 

acl := []graphmodels.Aclable {
	acl,

}
requestBody.SetAcl(acl)

result, err := graphClient.External().ConnectionsById("externalConnection-id").ItemsById("externalItem-id").Patch(context.Background(), requestBody, nil)


```