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
additionalData.put("Customer impact", customerImpact);
com.microsoft.graph.beta.models.security.casemanagement.CustomFieldNumberValue affectedUsers = new com.microsoft.graph.beta.models.security.casemanagement.CustomFieldNumberValue();
affectedUsers.setOdataType("#microsoft.graph.security.caseManagement.customFieldNumberValue");
affectedUsers.setValue(12);
additionalData.put("Affected users", affectedUsers);
com.microsoft.graph.beta.models.security.casemanagement.CustomFieldDateTimeValue reviewDate = new com.microsoft.graph.beta.models.security.casemanagement.CustomFieldDateTimeValue();
reviewDate.setOdataType("#microsoft.graph.security.caseManagement.customFieldDateTimeValue");
OffsetDateTime valueDateTime = OffsetDateTime.parse("2026-06-15T09:00:00Z");
reviewDate.setValueDateTime(valueDateTime);
additionalData.put("Review date", reviewDate);
com.microsoft.graph.beta.models.security.casemanagement.CustomFieldOptionsValue affectedServices = new com.microsoft.graph.beta.models.security.casemanagement.CustomFieldOptionsValue();
affectedServices.setOdataType("#microsoft.graph.security.caseManagement.customFieldOptionsValue");
LinkedList<String> values = new LinkedList<String>();
values.add("Exchange Online");
values.add("Microsoft Teams");
affectedServices.setValues(values);
additionalData.put("Affected services", affectedServices);
customFields.setAdditionalData(additionalData);
caseEscaped.setCustomFields(customFields);
com.microsoft.graph.models.security.casemanagement.Case result = graphClient.security().caseManagement().cases().post(caseEscaped);


```