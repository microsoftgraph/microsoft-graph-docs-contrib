---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

requestBody := graphmodelsnetworkaccess.NewPolicyRule()
name := "Contoso TLS Rule 1"
requestBody.SetName(&name) 
priority := int64(100)
requestBody.SetPriority(&priority) 
description := "My TLS rule"
requestBody.SetDescription(&description) 
settings := graphmodelsnetworkaccess.NewTlsInspectionRuleSettings()
status := graphmodels.ENABLED_SECURITYRULESTATUS 
settings.SetStatus(&status) 
requestBody.SetSettings(settings)
matchingConditions := graphmodelsnetworkaccess.NewTlsInspectionMatchingConditions()


tlsInspectionDestination := graphmodelsnetworkaccess.NewTlsInspectionFqdnDestination()
values := []string {
	"www.contoso.test.com",
	"*.contoso.org",
}
tlsInspectionDestination.SetValues(values)
tlsInspectionDestination1 := graphmodelsnetworkaccess.NewTlsInspectionDestination()
additionalData := map[string]interface{}{
	values := []string {
		"Entertainment",
	}
}
tlsInspectionDestination1.SetAdditionalData(additionalData)

destinations := []graphmodelsnetworkaccess.TlsInspectionDestinationable {
	tlsInspectionDestination,
	tlsInspectionDestination1,
}
matchingConditions.SetDestinations(destinations)
requestBody.SetMatchingConditions(matchingConditions)
additionalData := map[string]interface{}{
	"action" : "inspect", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
policyRules, err := graphClient.NetworkAccess().TlsInspectionPolicies().ByTlsInspectionPolicyId("tlsInspectionPolicy-id").PolicyRules().Post(context.Background(), requestBody, nil)


```