---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UpdatePolicy updatePolicy = new UpdatePolicy();
DeploymentSettings deploymentSettings = new DeploymentSettings();
ScheduleSettings schedule = new ScheduleSettings();
RateDrivenRolloutSettings gradualRollout = new RateDrivenRolloutSettings();
gradualRollout.durationBetweenOffers = DatatypeFactory.newInstance().newDuration("P1D");
gradualRollout.devicePerOffer = 1000;
schedule.gradualRollout = gradualRollout;
deploymentSettings.schedule = schedule;
updatePolicy.deploymentSettings = deploymentSettings;

graphClient.admin().windows().updates().updatePolicies("a7aa99c1-34a2-850c-5223-7816fde70713")
	.buildRequest()
	.patch(updatePolicy);

```