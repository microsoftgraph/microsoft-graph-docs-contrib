---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Simulation simulation = new Simulation();
simulation.displayName = "Graph Simulation";
simulation.additionalDataManager().put("payload@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a"));
simulation.attackTechnique = SimulationAttackTechnique.CREDENTIAL_HARVESTING;
simulation.status = SimulationStatus.SCHEDULED;
simulation.durationInDays = "3";
AddressBookAccountTargetContent includedAccountTarget = new AddressBookAccountTargetContent();
includedAccountTarget.type = AccountTargetContentType.ADDRESS_BOOK;
LinkedList<String> accountTargetEmailsList = new LinkedList<String>();
accountTargetEmailsList.add("john@contoso.com");
includedAccountTarget.accountTargetEmails = accountTargetEmailsList;
simulation.includedAccountTarget = includedAccountTarget;

graphClient.security().attackSimulation().simulations()
	.buildRequest()
	.post(simulation);

```