---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTenantCustomizedInformation()
tenantId := "String"
requestBody.SetTenantId(&tenantId) 


tenantContactInformation := graphmodels.NewTenantContactInformation()
name := "String"
tenantContactInformation.SetName(&name) 
title := "String"
tenantContactInformation.SetTitle(&title) 
email := "String"
tenantContactInformation.SetEmail(&email) 
phone := "String"
tenantContactInformation.SetPhone(&phone) 
notes := "String"
tenantContactInformation.SetNotes(&notes) 

contacts := []graphmodels.TenantContactInformationable {
	tenantContactInformation,

}
requestBody.SetContacts(contacts)
website := "String"
requestBody.SetWebsite(&website) 

result, err := graphClient.TenantRelationships().ManagedTenants().TenantsCustomizedInformationById("tenantCustomizedInformation-id").Patch(context.Background(), requestBody, nil)


```