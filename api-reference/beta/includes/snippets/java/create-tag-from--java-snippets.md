---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.Tag tag = new com.microsoft.graph.beta.models.ediscovery.Tag();
tag.setDisplayName("Privileged");
tag.setDescription("The document is privileged");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("parent@odata.bind", "https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/tags/98fdad78bbce4519b75474bc150575c3");
tag.setAdditionalData(additionalData);
com.microsoft.graph.models.ediscovery.Tag result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").tags().post(tag);


```