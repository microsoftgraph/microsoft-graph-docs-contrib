---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphserviceprincipals "github.com/microsoftgraph/msgraph-sdk-go/serviceprincipals"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphserviceprincipals.New$refDeleteRequestBody()
additionalData := map[string]interface{}{
	"odataId" : "https://graph.microsoft.com/v1.0/directoryObjects/{id}", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Owners().ByDirectoryObjectId("directoryObject-id").Ref().Delete(context.Background(), requestBody, nil)


```