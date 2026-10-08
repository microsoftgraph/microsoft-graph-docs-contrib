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

requestBody := graphmodels.NewExternalOriginResourceConnector()
id := "d743fe46-80f8-41b1-a2ee-7796e024edb9"
requestBody.SetId(&id) 
connectorType := graphmodels.SAPIAG_CONNECTORTYPE 
requestBody.SetConnectorType(&connectorType) 
displayName := "SAP IAG 5.0"
requestBody.SetDisplayName(&displayName) 
description := "SAP IAG 5.0.0.0.0"
requestBody.SetDescription(&description) 
connectionInfo := graphmodels.NewConnectionInfo()
url := "https://IAGINTGORG-iag-intg-space-java-rest-arqapi.cfps.sap.hana.ondemand.com"
connectionInfo.SetUrl(&url) 
additionalData := map[string]interface{}{
	"keyVaultName" : "sap-key-vault", 
	"subscriptionId" : "caa5v042-9c76-44de-9e84-f3e3071a7b4e", 
	"resourceGroup" : "test-rg", 
	"accessTokenUrl" : "https://entra-intg-l4nds6yn.authentication.sap.hana.ondemand.com/oauth/token", 
	"clientId" : "sb-8d896b-72b5-46ce-9273-471874a09137!b133623|iagapi-iag-intg-space!b11378", 
	"secretName" : "clienecret", 
}
connectionInfo.SetAdditionalData(additionalData)
requestBody.SetConnectionInfo(connectionInfo)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
externalOriginResourceConnectors, err := graphClient.IdentityGovernance().EntitlementManagement().ExternalOriginResourceConnectors().ByExternalOriginResourceConnectorId("externalOriginResourceConnector-id").Patch(context.Background(), requestBody, nil)


```