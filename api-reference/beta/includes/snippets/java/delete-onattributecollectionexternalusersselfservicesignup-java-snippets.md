---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identity.authenticationeventsflows.item.graphexternalusersselfservicesignupeventsflow.onattributecollection.graphonattributecollectionexternalusersselfservicesignup.attributes.ref.$refDeleteRequestBody refDeleteRequestBody = new com.microsoft.graph.beta.identity.authenticationeventsflows.item.graphexternalusersselfservicesignupeventsflow.onattributecollection.graphonattributecollectionexternalusersselfservicesignup.attributes.ref.$refDeleteRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.id", "https://graph.microsoft.com/beta/identity/userFlowAttributes/city");
refDeleteRequestBody.setAdditionalData(additionalData);
graphClient.identity().authenticationEventsFlows().byAuthenticationEventsFlowId("{authenticationEventsFlow-id}").graphExternalUsersSelfServiceSignUpEventsFlow().onAttributeCollection().graphOnAttributeCollectionExternalUsersSelfServiceSignUp().attributes().ref().delete(refDeleteRequestBody);


```