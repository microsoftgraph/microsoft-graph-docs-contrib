---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewConfigurationMonitor()
displayName := "Demo Monitor"
requestBody.SetDisplayName(&displayName) 
description := "This is a Demo Monitor"
requestBody.SetDescription(&description) 
baseline := graphmodels.NewConfigurationBaseline()
displayName := "Demo Baseline"
baseline.SetDisplayName(&displayName) 
description := "This is a baseline with SharedMailbox, AcceptedDomain and MailContact"
baseline.SetDescription(&description) 


baselineParameter := graphmodels.NewBaselineParameter()
displayName := "FQDN"
baselineParameter.SetDisplayName(&displayName) 
description := "The Fully Qualified Domain Name of the Tenant"
baselineParameter.SetDescription(&description) 
parameterType := graphmodels.STRING_BASELINEPARAMETERTYPE 
baselineParameter.SetParameterType(&parameterType) 

parameters := []graphmodels.BaselineParameterable {
	baselineParameter,
}
baseline.SetParameters(parameters)


baselineResource := graphmodels.NewBaselineResource()
displayName := "TestSharedMailbox Resource"
baselineResource.SetDisplayName(&displayName) 
resourceType := "microsoft.exchange.sharedmailbox"
baselineResource.SetResourceType(&resourceType) 
properties := graphmodels.NewOpenComplexDictionaryType()
additionalData := map[string]interface{}{
	"DisplayName" : "TestSharedMailbox", 
	"Identity" : "TestSharedMailbox", 
	"Ensure" : "Present", 
	"PrimarySmtpAddress" : "[concat('testSharedMailbox', parameters('FQDN'))]", 
	emailAddresses := []string {
		"abc@contoso.onmicrosoft.com",
		"[concat('testSharedMailbox@', parameters('FQDN'))]",
	}
}
properties.SetAdditionalData(additionalData)
baselineResource.SetProperties(properties)
baselineResource1 := graphmodels.NewBaselineResource()
displayName := "Accepted Domain"
baselineResource1.SetDisplayName(&displayName) 
resourceType := "microsoft.exchange.accepteddomain"
baselineResource1.SetResourceType(&resourceType) 
properties := graphmodels.NewOpenComplexDictionaryType()
additionalData := map[string]interface{}{
	"Identity" : "contoso.onmicrosoft.com", 
	"DomainType" : "InternalRelay", 
	"Ensure" : "Present", 
}
properties.SetAdditionalData(additionalData)
baselineResource1.SetProperties(properties)
baselineResource2 := graphmodels.NewBaselineResource()
displayName := "Mail Contact Resource"
baselineResource2.SetDisplayName(&displayName) 
resourceType := "microsoft.exchange.mailcontact"
baselineResource2.SetResourceType(&resourceType) 
properties := graphmodels.NewOpenComplexDictionaryType()
additionalData := map[string]interface{}{
	"Name" : "Chris", 
	"DisplayName" : "Chris", 
	"ExternalEmailAddress" : "SMTP:chris@fabrikam.com", 
	"Alias" : "Chrisa", 
	"Ensure" : "Present", 
}
properties.SetAdditionalData(additionalData)
baselineResource2.SetProperties(properties)

resources := []graphmodels.BaselineResourceable {
	baselineResource,
	baselineResource1,
	baselineResource2,
}
baseline.SetResources(resources)
requestBody.SetBaseline(baseline)
parameters := graphmodels.NewOpenComplexDictionaryType()
additionalData := map[string]interface{}{
	"FQDN" : "contoso.onmicrosoft.com", 
}
parameters.SetAdditionalData(additionalData)
requestBody.SetParameters(parameters)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
configurationMonitors, err := graphClient.Admin().ConfigurationManagement().ConfigurationMonitors().ByConfigurationMonitorId("configurationMonitor-id").Patch(context.Background(), requestBody, nil)


```