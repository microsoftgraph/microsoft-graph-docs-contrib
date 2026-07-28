---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.casemanagement.GenericCase caseEscaped = new com.microsoft.graph.beta.models.security.casemanagement.GenericCase();
caseEscaped.setOdataType("#microsoft.graph.security.caseManagement.genericCase");
caseEscaped.setDisplayName("Security Breach Investigation");
caseEscaped.setStatus("active");
caseEscaped.setDescription("Investigating potential credential compromise.");
caseEscaped.setAssignedTo("john.doe@contoso.com");
caseEscaped.setPriority("high");
com.microsoft.graph.beta.models.security.casemanagement.CustomFieldValues customFields = new com.microsoft.graph.beta.models.security.casemanagement.CustomFieldValues();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
com.microsoft.graph.beta.models.security.casemanagement.CustomFieldStringValue customerImpact = new com.microsoft.graph.beta.models.security.casemanagement.CustomFieldStringValue();
customerImpact.setOdataType("#microsoft.graph.security.caseManagement.customFieldStringValue");
customerImpact.setValue("Executive mailbox affected");
additionalData.put("customerImpact", customerImpact);
customFields.setAdditionalData(additionalData);
caseEscaped.setCustomFields(customFields);
com.microsoft.graph.models.security.casemanagement.Case result = graphClient.security().caseManagement().cases().post(caseEscaped);


```