---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Simulation()
request_body.display_name = 'Graph Simulation'

request_body.DurationInDays = 7

request_body.attacktechnique(SimulationAttackTechnique.CredentialHarvesting('simulationattacktechnique.credentialharvesting'))

request_body.status(SimulationStatus.Scheduled('simulationstatus.scheduled'))

included_account_target = AddressBookAccountTargetContent()
included_account_target.@odata_type = '#microsoft.graph.addressBookAccountTargetContent'

included_account_target.type(AccountTargetContentType.AddressBook('accounttargetcontenttype.addressbook'))

included_account_target.AccountTargetEmails(['john@contoso.com', ])


request_body.included_account_target = included_account_target
additional_data = [
'payload@odata_bind' => 'https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a', 
];
request_body.additional_data(additional_data)





result = await client.security.attack_simulation.simulations.post(request_body = request_body)


```