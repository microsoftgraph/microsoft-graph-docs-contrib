---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnPremAuthenticationPolicy onPremAuthenticationPolicy = new OnPremAuthenticationPolicy();
onPremAuthenticationPolicy.setDeletedDateTime(null);
onPremAuthenticationPolicy.setDescription("Updates to policy definition to manage and control authentication settings.");
onPremAuthenticationPolicy.setDisplayName("Update policy name");
LinkedList<String> definition = new LinkedList<String>();
definition.add("{\"Version\":1,\"LastUpdatedTimestamp\":\"2025-02-29T22:47:12.7764932Z\", \"Key1\": \"Value1\", \"Key2\": {\"SubKey1\": \"SubValue1\"}}");
onPremAuthenticationPolicy.setDefinition(definition);
OnPremAuthenticationPolicy result = graphClient.policies().onPremAuthenticationPolicies().byOnPremAuthenticationPolicyId("{onPremAuthenticationPolicy-id}").patch(onPremAuthenticationPolicy);


```