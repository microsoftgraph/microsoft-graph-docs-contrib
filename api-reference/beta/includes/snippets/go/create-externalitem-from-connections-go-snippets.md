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
type := graphmodels.USER_ACLTYPE 
acl.SetType(&type) 
value := "e811976d-83df-4cbd-8b9b-5215b18aa874"
acl.SetValue(&value) 
accessType := graphmodels.GRANT_ACCESSTYPE 
acl.SetAccessType(&accessType) 
identitySource := graphmodels.AZUREACTIVEDIRECTORY_IDENTITYSOURCETYPE 
acl.SetIdentitySource(&identitySource) 
acl1 := graphmodelsexternalconnectors.NewAcl()
type := graphmodels.GROUP_ACLTYPE 
acl1.SetType(&type) 
value := "14m1b9c38qe647f6a"
acl1.SetValue(&value) 
accessType := graphmodels.DENY_ACCESSTYPE 
acl1.SetAccessType(&accessType) 
identitySource := graphmodels.EXTERNAL_IDENTITYSOURCETYPE 
acl1.SetIdentitySource(&identitySource) 

acl := []graphmodelsexternalconnectors.Aclable {
	acl,
	acl1,
}
requestBody.SetAcl(acl)
properties := graphmodelsexternalconnectors.NewProperties()
additionalData := map[string]interface{}{
	"title" : "Error in the payment gateway", 
	"priority" : int32(1) , 
	"assignee" : "john@contoso.com", 
}
properties.SetAdditionalData(additionalData)
requestBody.SetProperties(properties)
content := graphmodelsexternalconnectors.NewExternalItemContent()
value := "Error in payment gateway..."
content.SetValue(&value) 
type := graphmodels.TEXT_EXTERNALITEMCONTENTTYPE 
content.SetType(&type) 
requestBody.SetContent(content)

items, err := graphClient.External().Connections().ByExternalConnectionId("externalConnection-id").Items().ByExternalItemId("externalItem-id").Put(context.Background(), requestBody, nil)


```