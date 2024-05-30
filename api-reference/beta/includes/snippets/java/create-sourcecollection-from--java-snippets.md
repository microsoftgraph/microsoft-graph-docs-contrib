---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.SourceCollection sourceCollection = new com.microsoft.graph.beta.models.ediscovery.SourceCollection();
sourceCollection.setDisplayName("Quarterly Financials search");
sourceCollection.setContentQuery("subject:'Quarterly Financials'");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<String> custodianSourcesOdataBind = new LinkedList<String>();
custodianSourcesOdataBind.add("https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/custodians/2192ca408ea2410eba3bec8ae873be6b/userSources/46384443-4137-3032-3437-363939433735");
additionalData.put("custodianSources@odata.bind", custodianSourcesOdataBind);
sourceCollection.setAdditionalData(additionalData);
com.microsoft.graph.models.ediscovery.SourceCollection result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").sourceCollections().post(sourceCollection);


```