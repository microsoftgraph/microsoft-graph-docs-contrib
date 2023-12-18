---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureAuthorizationSystemResource azureAuthorizationSystemResource = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().resources("L3N1YnNjcmlwdGlvbnMvMmM0N2FiYjctYWRlNi00NzAwLTlhMTktYWM4YzE5MWEyYWI4L3Jlc291cmNlR3JvdXBzLzJlUmVzb3VyY2VHcm91cC9wcm92aWRlcnMvTWljcm9zb2Z0Lk5ldHdvcmsvdmlydHVhbE5ldHdvcmtzLzJlUmVzb3VyY2VHcm91cC12bmV0")
	.buildRequest()
	.get();

```