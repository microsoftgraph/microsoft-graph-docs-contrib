---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.EdiscoverySearch ediscoverySearch = new com.microsoft.graph.beta.models.security.EdiscoverySearch();
ediscoverySearch.setDisplayName("My search 2");
ediscoverySearch.setDescription("My first search");
ediscoverySearch.setContentQuery("(Author=\"edison\")");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<String> custodianSourcesOdataBind = new LinkedList<String>();
custodianSourcesOdataBind.add("https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/custodians/0053a61a3b6c42738f7606791716a22a/userSources/43434642-3137-3138-3432-374142313639");
custodianSourcesOdataBind.add("https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/custodians/0053a61a3b6c42738f7606791716a22a/siteSources/169718e3-a8df-449d-bef4-ee09fe1ddc5d");
custodianSourcesOdataBind.add("https://graph.microsoft.com/beta/security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/custodians('0053a61a3b6c42738f7606791716a22a')/unifiedGroupSources('32e14fa4-3106-4bd2-a245-34bf0c718a7e')");
additionalData.put("custodianSources@odata.bind", custodianSourcesOdataBind);
LinkedList<String> noncustodialSourcesOdataBind = new LinkedList<String>();
noncustodialSourcesOdataBind.add("https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/noncustodialdatasources/35393639323133394345384344303043");
additionalData.put("noncustodialSources@odata.bind", noncustodialSourcesOdataBind);
ediscoverySearch.setAdditionalData(additionalData);
com.microsoft.graph.models.security.EdiscoverySearch result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").searches().post(ediscoverySearch);


```