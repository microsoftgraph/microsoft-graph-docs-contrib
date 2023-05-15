---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//externalConnectors"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewExternalItem()


acl := graphmodels.NewAcl()
type := graphmodels.USER_ACLTYPE 
acl.SetType(&type) 
value := "e811976d-83df-4cbd-8b9b-5215b18aa874"
acl.SetValue(&value) 
accessType := graphmodels.GRANT_ACCESSTYPE 
acl.SetAccessType(&accessType) 
identitySource := graphmodels.AZUREACTIVEDIRECTORY_IDENTITYSOURCETYPE 
acl.SetIdentitySource(&identitySource) 
acl1 := graphmodels.NewAcl()
type := graphmodels.GROUP_ACLTYPE 
acl1.SetType(&type) 
value := "14m1b9c38qe647f6a"
acl1.SetValue(&value) 
accessType := graphmodels.DENY_ACCESSTYPE 
acl1.SetAccessType(&accessType) 
identitySource := graphmodels.EXTERNAL_IDENTITYSOURCETYPE 
acl1.SetIdentitySource(&identitySource) 

acl := []graphmodels.Aclable {
	acl,
	acl1,

}
requestBody.SetAcl(acl)
properties := graphmodels.NewProperties()
additionalData := map[string]interface{}{
	"title" : "Error in the payment gateway", 
	"priority" : int32(1) , 
	"assignee" : "john@contoso.com", 
}
properties.SetAdditionalData(additionalData)
requestBody.SetProperties(properties)
content := graphmodels.NewExternalItemContent()
value := "Error in payment gateway..."
content.SetValue(&value) 
type := graphmodels.TEXT_EXTERNALITEMCONTENTTYPE 
content.SetType(&type) 
requestBody.SetContent(content)

result, err := graphClient.External().Connections().ByConnectionId("externalConnection-id").Items().ByItemId("externalItem-id").Put(context.Background(), requestBody, nil)


```