---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewTenantCustomizedInformation()
tenantId := "String"
requestBody.SetTenantId(&tenantId)
requestBody.SetContacts( []TenantContactInformation {
	msgraphsdk.NewTenantContactInformation(),
name := "String"
	SetName(&name)
title := "String"
	SetTitle(&title)
email := "String"
	SetEmail(&email)
phone := "String"
	SetPhone(&phone)
notes := "String"
	SetNotes(&notes)
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "microsoft.graph.managedTenants.tenantContactInformation",
	}
}
website := "String"
requestBody.SetWebsite(&website)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.managedTenants.tenantCustomizedInformation",
}
tenantCustomizedInformationId := "tenantCustomizedInformation-id"
graphClient.TenantRelationships().ManagedTenants().TenantsCustomizedInformationById(&tenantCustomizedInformationId).Patch(requestBody)


```