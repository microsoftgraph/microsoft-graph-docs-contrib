---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDelegatedAdminRelationship()
displayName := "Contoso admin relationship"
requestBody.SetDisplayName(&displayName) 
duration , err := abstractions.ParseISODuration("P730D")
requestBody.SetDuration(&duration) 
customer := graphmodels.NewDelegatedAdminRelationshipCustomerParticipant()
tenantId := "4b827261-d21f-4aa9-b7db-7fa1f56fb163"
customer.SetTenantId(&tenantId) 
displayName := "Contoso subsidiary Inc"
customer.SetDisplayName(&displayName) 
requestBody.SetCustomer(customer)
accessDetails := graphmodels.NewDelegatedAdminAccessDetails()


unifiedRole := graphmodels.NewUnifiedRole()
roleDefinitionId := "29232cdf-9323-42fd-ade2-1d097af3e4de"
unifiedRole.SetRoleDefinitionId(&roleDefinitionId) 
unifiedRole1 := graphmodels.NewUnifiedRole()
roleDefinitionId := "3a2c62db-5318-420d-8d74-23affee5d9d5"
unifiedRole1.SetRoleDefinitionId(&roleDefinitionId) 

unifiedRoles := []graphmodels.UnifiedRoleable {
	unifiedRole,
	unifiedRole1,

}
accessDetails.SetUnifiedRoles(unifiedRoles)
requestBody.SetAccessDetails(accessDetails)

result, err := graphClient.TenantRelationships().DelegatedAdminRelationships().Post(context.Background(), requestBody, nil)


```