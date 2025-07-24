---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.TlsInspectionPolicy tlsInspectionPolicy = new com.microsoft.graph.beta.models.networkaccess.TlsInspectionPolicy();
tlsInspectionPolicy.setName("New name TLS Inspection Policy");
tlsInspectionPolicy.setDescription("New description policy for inspecting TLS traffic");
com.microsoft.graph.beta.models.networkaccess.TlsInspectionPolicySettings settings = new com.microsoft.graph.beta.models.networkaccess.TlsInspectionPolicySettings();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("defaultAction", "inspect");
settings.setAdditionalData(additionalData);
tlsInspectionPolicy.setSettings(settings);
com.microsoft.graph.models.networkaccess.TlsInspectionPolicy result = graphClient.networkAccess().tlsInspectionPolicies().byTlsInspectionPolicyId("{tlsInspectionPolicy-id}").patch(tlsInspectionPolicy);


```