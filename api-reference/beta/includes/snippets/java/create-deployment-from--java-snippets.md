---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Deployment deployment = new Deployment();
CatalogContent content = new CatalogContent();
FeatureUpdateCatalogEntry catalogEntry = new FeatureUpdateCatalogEntry();
catalogEntry.id = "f341705b-0b15-4ce3-aaf2-6a1681d78606";
content.catalogEntry = catalogEntry;
deployment.content = content;
DeploymentSettings settings = new DeploymentSettings();
ScheduleSettings schedule = new ScheduleSettings();
RateDrivenRolloutSettings gradualRollout = new RateDrivenRolloutSettings();
gradualRollout.durationBetweenOffers = DatatypeFactory.newInstance().newDuration("P7D");
gradualRollout.devicePerOffer = 100;
schedule.gradualRollout = gradualRollout;
settings.schedule = schedule;
MonitoringSettings monitoring = new MonitoringSettings();
LinkedList<MonitoringRule> monitoringRulesList = new LinkedList<MonitoringRule>();
MonitoringRule monitoringRules = new MonitoringRule();
monitoringRules.signal = MonitoringSignal.ROLLBACK;
monitoringRules.threshold = 5;
monitoringRules.action = MonitoringAction.PAUSE_DEPLOYMENT;
monitoringRulesList.add(monitoringRules);
monitoring.monitoringRules = monitoringRulesList;
settings.monitoring = monitoring;
deployment.settings = settings;

graphClient.admin().windows().updates().deployments()
	.buildRequest()
	.post(deployment);

```