---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

B2xIdentityUserFlow b2xIdentityUserFlow = new B2xIdentityUserFlow();
b2xIdentityUserFlow.setId("UserFlowWithAPIConnector");
b2xIdentityUserFlow.setUserFlowType(UserFlowType.SignUpOrSignIn);
b2xIdentityUserFlow.setUserFlowTypeVersion(1f);
UserFlowApiConnectorConfiguration apiConnectorConfiguration = new UserFlowApiConnectorConfiguration();
IdentityApiConnector postFederationSignup = new IdentityApiConnector();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.id", "https://graph.microsoft.com/v1/identity/apiConnectors/{id}");
postFederationSignup.setAdditionalData(additionalData);
apiConnectorConfiguration.setPostFederationSignup(postFederationSignup);
IdentityApiConnector postAttributeCollection = new IdentityApiConnector();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("@odata.id", "https://graph.microsoft.com/v1/identity/apiConnectors/{id}");
postAttributeCollection.setAdditionalData(additionalData1);
apiConnectorConfiguration.setPostAttributeCollection(postAttributeCollection);
b2xIdentityUserFlow.setApiConnectorConfiguration(apiConnectorConfiguration);
B2xIdentityUserFlow result = graphClient.identity().b2xUserFlows().post(b2xIdentityUserFlow);


```