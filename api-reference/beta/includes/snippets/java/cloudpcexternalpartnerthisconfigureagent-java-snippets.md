---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.externalpartners.item.configureagent.ConfigureAgentPostRequestBody configureAgentPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.externalpartners.item.configureagent.ConfigureAgentPostRequestBody();
CloudPcExternalPartnerAgentSetting agentSetting = new CloudPcExternalPartnerAgentSetting();
agentSetting.setAgentUrl("https://rmmExample.microsoft.com/agent/rmmExampleAgent.msi");
agentSetting.setAgentSha256("EC6AF1EA0367D16DDE6639A89A080A524CEBC4D4BEDFE00ED0CAC4B865A918D8");
LinkedList<String> installParameters = new LinkedList<String>();
installParameters.add("/quiet");
installParameters.add("/norestart");
installParameters.add("TOKENID=e69c1577-d465-4e57-af33-0ddea43feeb1");
agentSetting.setInstallParameters(installParameters);
agentSetting.setAutoDeploymentEnabled(true);
configureAgentPostRequestBody.setAgentSetting(agentSetting);
graphClient.deviceManagement().virtualEndpoint().externalPartners().byCloudPcExternalPartnerId("{cloudPcExternalPartner-id}").configureAgent().post(configureAgentPostRequestBody);


```