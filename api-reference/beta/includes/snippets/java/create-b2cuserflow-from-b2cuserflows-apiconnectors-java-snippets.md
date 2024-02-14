---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

B2cIdentityUserFlow b2cIdentityUserFlow = new B2cIdentityUserFlow();
b2cIdentityUserFlow.setId("UserFlowWithAPIConnector");
b2cIdentityUserFlow.setUserFlowType(UserFlowType.SignUpOrSignIn);
b2cIdentityUserFlow.setUserFlowTypeVersion(1f);
UserFlowApiConnectorConfiguration apiConnectorConfiguration = new UserFlowApiConnectorConfiguration();
IdentityApiConnector postFederationSignup = new IdentityApiConnector();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.id", "{apiConnectorId}");
postFederationSignup.setAdditionalData(additionalData);
apiConnectorConfiguration.setPostFederationSignup(postFederationSignup);
IdentityApiConnector postAttributeCollection = new IdentityApiConnector();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("@odata.id", "{apiConnectorId}");
postAttributeCollection.setAdditionalData(additionalData1);
apiConnectorConfiguration.setPostAttributeCollection(postAttributeCollection);
b2cIdentityUserFlow.setApiConnectorConfiguration(apiConnectorConfiguration);
B2cIdentityUserFlow result = graphClient.identity().b2cUserFlows().post(b2cIdentityUserFlow);


```