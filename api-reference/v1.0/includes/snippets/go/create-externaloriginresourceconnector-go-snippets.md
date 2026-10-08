---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewExternalOriginResourceConnector()
displayName := "SAP IAG Connector"
requestBody.SetDisplayName(&displayName) 
description := "This connector helps integrate Microsoft Entra with SAP IAG"
requestBody.SetDescription(&description) 
connectorType := graphmodels.SAPIAG_CONNECTORTYPE 
requestBody.SetConnectorType(&connectorType) 
connectionInfo := graphmodels.NewExternalTokenBasedSapIagConnectionInfo()
url := "https://contoso.example.com"
connectionInfo.SetUrl(&url) 
accessTokenUrl := "https://contoso.example.com/oauth/token"
connectionInfo.SetAccessTokenUrl(&accessTokenUrl) 
clientId := "e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29"
connectionInfo.SetClientId(&clientId) 
keyVaultName := "Keyvault"
connectionInfo.SetKeyVaultName(&keyVaultName) 
secretName := "clientSecret"
connectionInfo.SetSecretName(&secretName) 
subscriptionId := "5ee98b73-d9df-43a7-8a92-36855054bdee"
connectionInfo.SetSubscriptionId(&subscriptionId) 
resourceGroup := "SAP IAG Group"
connectionInfo.SetResourceGroup(&resourceGroup) 
requestBody.SetConnectionInfo(connectionInfo)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
externalOriginResourceConnectors, err := graphClient.IdentityGovernance().EntitlementManagement().ExternalOriginResourceConnectors().Post(context.Background(), requestBody, nil)


```