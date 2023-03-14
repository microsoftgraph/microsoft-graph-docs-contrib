---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UpdatePolicy updatePolicy = new UpdatePolicy();
DeploymentAudience audience = new DeploymentAudience();
audience.id = "8c4eb1eb-d7a3-4633-8e2f-f926e82df08e";
updatePolicy.audience = audience;
LinkedList<ComplianceChange> complianceChangesList = new LinkedList<ComplianceChange>();
ContentApproval complianceChanges = new ContentApproval();
complianceChangesList.add(complianceChanges);
ComplianceChangeCollectionResponse complianceChangeCollectionResponse = new ComplianceChangeCollectionResponse();
complianceChangeCollectionResponse.value = complianceChangesList;
ComplianceChangeCollectionPage complianceChangeCollectionPage = new ComplianceChangeCollectionPage(complianceChangeCollectionResponse, null);
updatePolicy.complianceChanges = complianceChangeCollectionPage;
LinkedList<ComplianceChangeRule> complianceChangeRulesList = new LinkedList<ComplianceChangeRule>();
ContentApprovalRule complianceChangeRules = new ContentApprovalRule();
DriverUpdateFilter contentFilter = new DriverUpdateFilter();
complianceChangeRules.contentFilter = contentFilter;
complianceChangeRules.durationBeforeDeploymentStart = DatatypeFactory.newInstance().newDuration("P7D");
complianceChangeRulesList.add(complianceChangeRules);
updatePolicy.complianceChangeRules = complianceChangeRulesList;
DeploymentSettings deploymentSettings = new DeploymentSettings();
ScheduleSettings schedule = new ScheduleSettings();
RateDrivenRolloutSettings gradualRollout = new RateDrivenRolloutSettings();
gradualRollout.durationBetweenOffers = DatatypeFactory.newInstance().newDuration("P1D");
gradualRollout.devicePerOffer = 1000;
schedule.gradualRollout = gradualRollout;
deploymentSettings.schedule = schedule;
updatePolicy.deploymentSettings = deploymentSettings;

graphClient.admin().windows().updates().updatePolicies()
	.buildRequest()
	.post(updatePolicy);

```