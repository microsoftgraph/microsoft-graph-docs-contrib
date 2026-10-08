---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecuritycasemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security/casemanagement"
	  //other-imports
)

requestBody := graphmodelssecuritycasemanagement.NewCase()
displayName := "Security Breach Investigation"
requestBody.SetDisplayName(&displayName) 
status := "active"
requestBody.SetStatus(&status) 
description := "Investigating potential credential compromise."
requestBody.SetDescription(&description) 
assignedTo := "john.doe@contoso.com"
requestBody.SetAssignedTo(&assignedTo) 
priority := "high"
requestBody.SetPriority(&priority) 
customFields := graphmodelssecuritycasemanagement.NewCustomFieldValues()
additionalData := map[string]interface{}{
customer impact := graphmodelssecuritycasemanagement.NewCustomFieldStringValue()
value := "Executive mailbox affected"
customer impact.SetValue(&value) 
	customFields.SetCustomer impact(customer impact)
affected users := graphmodelssecuritycasemanagement.NewCustomFieldNumberValue()
value := int32(12)
affected users.SetValue(&value) 
	customFields.SetAffected users(affected users)
review date := graphmodelssecuritycasemanagement.NewCustomFieldDateTimeValue()
valueDateTime , err := time.Parse(time.RFC3339, "2026-06-15T09:00:00Z")
review date.SetValueDateTime(&valueDateTime) 
	customFields.SetReview date(review date)
affected services := graphmodelssecuritycasemanagement.NewCustomFieldOptionsValue()
	values := []string {
		"Exchange Online",
		"Microsoft Teams",
	}
	affected services.SetValues(values)
	customFields.SetAffected services(affected services)
}
customFields.SetAdditionalData(additionalData)
requestBody.SetCustomFields(customFields)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
cases, err := graphClient.Security().CaseManagement().Cases().Post(context.Background(), requestBody, nil)


```