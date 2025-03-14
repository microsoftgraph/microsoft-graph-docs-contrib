---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.simulation import Simulation
from msgraph_beta.generated.models.simulation_attack_technique import SimulationAttackTechnique
from msgraph_beta.generated.models.simulation_attack_type import SimulationAttackType
from msgraph_beta.generated.models.simulation_status import SimulationStatus
from msgraph_beta.generated.models.address_book_account_target_content import AddressBookAccountTargetContent
from msgraph_beta.generated.models.account_target_content_type import AccountTargetContentType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Simulation(
	display_name = "Graph Simulation",
	duration_in_days = 7,
	attack_technique = SimulationAttackTechnique.CredentialHarvesting,
	attack_type = SimulationAttackType.Social,
	status = SimulationStatus.Scheduled,
	included_account_target = AddressBookAccountTargetContent(
		odata_type = "#microsoft.graph.addressBookAccountTargetContent",
		type = AccountTargetContentType.AddressBook,
		account_target_emails = [
			"faiza@contoso.com",
		],
	),
	excluded_account_target = AddressBookAccountTargetContent(
		odata_type = "#microsoft.graph.addressBookAccountTargetContent",
		type = AccountTargetContentType.AddressBook,
		account_target_emails = [
			"sam@contoso.com",
		],
	),
	additional_data = {
			"@odata_etag" : "\"0100aa9b-0000-0100-0000-6396fa270000\"",
			"payload@odata_bind" : "https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a",
	}
)

result = await graph_client.security.attack_simulation.simulations.by_simulation_id('simulation-id').patch(request_body)


```