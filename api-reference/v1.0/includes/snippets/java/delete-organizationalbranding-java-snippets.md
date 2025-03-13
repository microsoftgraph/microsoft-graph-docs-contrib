---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.organization.item.branding.BrandingDeleteRequestBody brandingDeleteRequestBody = new com.microsoft.graph.organization.item.branding.BrandingDeleteRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("id", "0");
brandingDeleteRequestBody.setAdditionalData(additionalData);
graphClient.organization().byOrganizationId("{organization-id}").branding().delete(brandingDeleteRequestBody);


```