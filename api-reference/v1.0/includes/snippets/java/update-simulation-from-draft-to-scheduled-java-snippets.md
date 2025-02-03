---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Simulation simulation = new Simulation();
simulation.setId("2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc");
simulation.setDisplayName("Graph Simulation");
simulation.setDurationInDays(7);
simulation.setAttackTechnique(SimulationAttackTechnique.CredentialHarvesting);
simulation.setAttackType(SimulationAttackType.Social);
simulation.setStatus(SimulationStatus.Scheduled);
AddressBookAccountTargetContent includedAccountTarget = new AddressBookAccountTargetContent();
includedAccountTarget.setOdataType("#microsoft.graph.addressBookAccountTargetContent");
includedAccountTarget.setType(AccountTargetContentType.AddressBook);
LinkedList<String> accountTargetEmails = new LinkedList<String>();
accountTargetEmails.add("faiza@contoso.com");
includedAccountTarget.setAccountTargetEmails(accountTargetEmails);
simulation.setIncludedAccountTarget(includedAccountTarget);
AddressBookAccountTargetContent excludedAccountTarget = new AddressBookAccountTargetContent();
excludedAccountTarget.setOdataType("#microsoft.graph.addressBookAccountTargetContent");
excludedAccountTarget.setType(AccountTargetContentType.AddressBook);
LinkedList<String> accountTargetEmails1 = new LinkedList<String>();
accountTargetEmails1.add("sam@contoso.com");
excludedAccountTarget.setAccountTargetEmails(accountTargetEmails1);
simulation.setExcludedAccountTarget(excludedAccountTarget);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.etag", "\"0100aa9b-0000-0100-0000-6396fa270000\"");
additionalData.put("payload@odata.bind", "https://graph.microsoft.com/v1.0/security/attacksimulation/payloads/12345678-9abc-def0-123456789a");
simulation.setAdditionalData(additionalData);
Simulation result = graphClient.security().attackSimulation().simulations().bySimulationId("{simulation-id}").patch(simulation);


```