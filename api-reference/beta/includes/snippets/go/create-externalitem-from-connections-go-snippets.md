---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsexternalconnectors "github.com/microsoftgraph/msgraph-beta-sdk-go/models/externalconnectors"
	  //other-imports
)

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
	"title" : "Fix issues with Payment gateway", 
	"priority" : int32(1) , 
	"assignee" : "john@contoso.com", 
}
properties.SetAdditionalData(additionalData)
requestBody.SetProperties(properties)
content := graphmodelsexternalconnectors.NewExternalItemContent()
value := "Payment gateway module has the following tasks to be completed..."
content.SetValue(&value) 
type := graphmodels.TEXT_EXTERNALITEMCONTENTTYPE 
content.SetType(&type) 
requestBody.SetContent(content)
informationProtectionLabel := graphmodelsexternalconnectors.NewExternalItemInformationProtectionLabel()
sensitivityLabelId := "b6a62c3c-d471-4a3e-9f5f-93c1f928b02d"
informationProtectionLabel.SetSensitivityLabelId(&sensitivityLabelId) 
requestBody.SetInformationProtectionLabel(informationProtectionLabel)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
items, err := graphClient.External().Connections().ByExternalConnectionId("externalConnection-id").Items().ByExternalItemId("externalItem-id").Put(context.Background(), requestBody, nil)


```