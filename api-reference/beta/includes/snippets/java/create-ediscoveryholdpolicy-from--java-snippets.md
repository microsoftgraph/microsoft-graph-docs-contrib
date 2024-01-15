---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoveryHoldPolicy ediscoveryHoldPolicy = new EdiscoveryHoldPolicy();
ediscoveryHoldPolicy.displayName = "My legalHold with sources";
ediscoveryHoldPolicy.description = "Created from Graph API";
ediscoveryHoldPolicy.additionalDataManager().put("userSources@odata.bind", new JsonPrimitive("[  {    \"@odata.type\": \"microsoft.graph.security.userSource\",    \"email\": \"SalesTeam@M365x809305.OnMicrosoft.com\"  }]"));
ediscoveryHoldPolicy.additionalDataManager().put("siteSources@odata.bind", new JsonPrimitive("[  {    \"@odata.type\": \"microsoft.graph.security.siteSource\",    \"site\": {      \"webUrl\": \"https://m365x809305.sharepoint.com/sites/Design-topsecret\"    }  }]"));

graphClient.security().cases().ediscoveryCases("b0073e4e-4184-41c6-9eb7-8c8cc3e2288b").legalHolds()
	.buildRequest()
	.post(ediscoveryHoldPolicy);

```