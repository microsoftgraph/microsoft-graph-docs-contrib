---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identitygovernance.entitlementmanagement.accesspackages.item.getapplicablepolicyrequirements.GetApplicablePolicyRequirementsPostRequestBody getApplicablePolicyRequirementsPostRequestBody = new com.microsoft.graph.beta.identitygovernance.entitlementmanagement.accesspackages.item.getapplicablepolicyrequirements.GetApplicablePolicyRequirementsPostRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 subject = new ();
subject.setObjectId("5acd375c-8acb-45de-a958-fa0dd89259ad");
additionalData.put("subject", subject);
getApplicablePolicyRequirementsPostRequestBody.setAdditionalData(additionalData);
var result = graphClient.identityGovernance().entitlementManagement().accessPackages().byAccessPackageId("{accessPackage-id}").getApplicablePolicyRequirements().post(getApplicablePolicyRequirementsPostRequestBody);


```