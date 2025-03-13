---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernancecreatenewversion.CreateNewVersionPostRequestBody createNewVersionPostRequestBody = new com.microsoft.graph.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernancecreatenewversion.CreateNewVersionPostRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("category", "joiner");
additionalData.put("description", "Configure new hire tasks for onboarding employees on their first day");
additionalData.put("displayName", "custom email marketing API test");
additionalData.put("isEnabled", true);
additionalData.put("isSchedulingEnabled", false);
com.microsoft.graph.models.identitygovernance.TriggerAndScopeBasedConditions executionConditions = new com.microsoft.graph.models.identitygovernance.TriggerAndScopeBasedConditions();
executionConditions.setOdataType("#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions");
com.microsoft.graph.models.identitygovernance.RuleBasedSubjectSet scope = new com.microsoft.graph.models.identitygovernance.RuleBasedSubjectSet();
scope.setOdataType("#microsoft.graph.identityGovernance.ruleBasedSubjectSet");
scope.setRule("(department eq 'Marketing')");
executionConditions.setScope(scope);
com.microsoft.graph.models.identitygovernance.TimeBasedAttributeTrigger trigger = new com.microsoft.graph.models.identitygovernance.TimeBasedAttributeTrigger();
trigger.setOdataType("#microsoft.graph.identityGovernance.timeBasedAttributeTrigger");
trigger.setTimeBasedAttribute(com.microsoft.graph.models.identitygovernance.WorkflowTriggerTimeBasedAttribute.EmployeeHireDate);
trigger.setOffsetInDays(0);
executionConditions.setTrigger(trigger);
additionalData.put("executionConditions", executionConditions);
LinkedList<Object> tasks = new LinkedList<Object>();
 property = new ();
property.setContinueOnError(false);
property.setDescription("Enable user account in the directory");
property.setDisplayName("Enable User Account");
property.setIsEnabled(true);
property.setTaskDefinitionId("6fc52c9d-398b-4305-9763-15f42c1676fc");
LinkedList<Object> arguments = new LinkedList<Object>();
property.setArguments(arguments);
tasks.add(property);
 property1 = new ();
property1.setContinueOnError(false);
property1.setDescription("Send welcome email to new hire");
property1.setDisplayName("Send Welcome Email");
property1.setIsEnabled(true);
property1.setTaskDefinitionId("70b29d51-b59a-4773-9280-8841dfd3f2ea");
LinkedList<Object> arguments1 = new LinkedList<Object>();
 property2 = new ();
property2.setName("cc");
property2.setValue("1baa57fa-3c4e-4526-ba5a-db47a9df95f0");
arguments1.add(property2);
 property3 = new ();
property3.setName("customSubject");
property3.setValue("Welcome to the organization {{userDisplayName}}!");
arguments1.add(property3);
 property4 = new ();
property4.setName("customBody");
property4.setValue("Welcome to our organization {{userGivenName}}!");
arguments1.add(property4);
 property5 = new ();
property5.setName("locale");
property5.setValue("en-us");
arguments1.add(property5);
property1.setArguments(arguments1);
tasks.add(property1);
additionalData.put("tasks", tasks);
createNewVersionPostRequestBody.setAdditionalData(additionalData);
var result = graphClient.identityGovernance().lifecycleWorkflows().workflows().byWorkflowId("{workflow-id}").microsoftGraphIdentityGovernanceCreateNewVersion().post(createNewVersionPostRequestBody);


```