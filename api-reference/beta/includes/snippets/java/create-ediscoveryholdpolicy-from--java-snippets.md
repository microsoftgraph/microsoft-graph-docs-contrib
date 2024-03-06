---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.EdiscoveryHoldPolicy ediscoveryHoldPolicy = new com.microsoft.graph.beta.models.security.EdiscoveryHoldPolicy();
ediscoveryHoldPolicy.setDisplayName("My legalHold with sources");
ediscoveryHoldPolicy.setDescription("Created from Graph API");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> userSourcesOdataBind = new LinkedList<Object>();
 property = new ();
property.setOdataType("microsoft.graph.security.userSource");
property.setEmail("SalesTeam@contoso.com");
userSourcesOdataBind.add(property);
additionalData.put("userSources@odata.bind", userSourcesOdataBind);
LinkedList<Object> siteSourcesOdataBind = new LinkedList<Object>();
 property1 = new ();
property1.setOdataType("microsoft.graph.security.siteSource");
 site = new ();
site.setWebUrl("https://m365x809305.sharepoint.com/sites/Design-topsecret");
property1.setSite(site);
siteSourcesOdataBind.add(property1);
additionalData.put("siteSources@odata.bind", siteSourcesOdataBind);
ediscoveryHoldPolicy.setAdditionalData(additionalData);
com.microsoft.graph.models.security.EdiscoveryHoldPolicy result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").legalHolds().post(ediscoveryHoldPolicy);


```