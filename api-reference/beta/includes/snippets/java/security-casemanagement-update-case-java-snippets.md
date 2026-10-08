---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.casemanagement.GenericCase caseEscaped = new com.microsoft.graph.beta.models.security.casemanagement.GenericCase();
caseEscaped.setOdataType("#microsoft.graph.security.caseManagement.genericCase");
caseEscaped.setDisplayName("Case MS-001");
caseEscaped.setStatus("Open");
caseEscaped.setDescription("Investigating potential credential compromise.");
caseEscaped.setAssignedTo("john.doe@contoso.com");
caseEscaped.setPriority("high");
OffsetDateTime dueDateTime = OffsetDateTime.parse("2026-06-29T17:54:43Z");
caseEscaped.setDueDateTime(dueDateTime);
caseEscaped.setClosingNotes("Follow up with the account owner.");
com.microsoft.graph.beta.models.security.casemanagement.CustomFieldValues customFields = new com.microsoft.graph.beta.models.security.casemanagement.CustomFieldValues();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
com.microsoft.graph.beta.models.security.casemanagement.CustomFieldStringValue customerImpact = new com.microsoft.graph.beta.models.security.casemanagement.CustomFieldStringValue();
customerImpact.setOdataType("#microsoft.graph.security.caseManagement.customFieldStringValue");
customerImpact.setValue("Multiple executive mailboxes affected");
additionalData.put("Customer impact", customerImpact);
customFields.setAdditionalData(additionalData);
caseEscaped.setCustomFields(customFields);
com.microsoft.graph.models.security.casemanagement.Case result = graphClient.security().caseManagement().cases().byCaseId("{case-id}").patch(caseEscaped);


```