---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.simulation import Simulation
from msgraph.generated.models.email_identity import EmailIdentity
from msgraph.generated.models.address_book_account_target_content import AddressBookAccountTargetContent
from msgraph.generated.models.training_setting import TrainingSetting
from msgraph.generated.models.end_user_notification_setting import EndUserNotificationSetting
from msgraph.generated.models.positive_reinforcement_notification import PositiveReinforcementNotification

graph_client = GraphServiceClient(credentials, scopes)

request_body = Simulation(
	display_name = "Graph Simulation",
	created_by = EmailIdentity(
		email = "john@contoso.com",
	),
	duration_in_days = 3,
	attack_technique = SimulationAttackTechnique.CredentialHarvesting,
	status = SimulationStatus.Scheduled,
	included_account_target = AddressBookAccountTargetContent(
		odata_type = "#microsoft.graph.addressBookAccountTargetContent",
		type = AccountTargetContentType.AddressBook,
		account_target_emails = [
			"john@contoso.com",
		],
	),
	training_setting = TrainingSetting(
		setting_type = TrainingSettingType.NoTraining,
	),
	end_user_notification_setting = EndUserNotificationSetting(
		notification_preference = EndUserNotificationPreference.Microsoft,
		setting_type = EndUserNotificationSettingType.NoTraining,
		positive_reinforcement = PositiveReinforcementNotification(
			delivery_preference = NotificationDeliveryPreference.DeliverAfterCampaignEnd,
			end_user_notification = "https://graph.microsoft.com/beta/security/attacksimulation/endUserNotifications/1ewer3678-9abc-def0-123456789a",
			default_language = "en",
		),
		additional_data = {
				"simulation_notification" : {
						"targetted_user_type" : "compromised",
						"end_user_notification@odata_bind" : "https://graph.microsoft.com/beta/security/attacksimulation/endUserNotifications/12wer3678-9abc-def0-123456789a",
						"default_language" : "en",
				},
		}
	),
	additional_data = {
			"payload@odata_bind" : "https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a",
			"login_page@odata_bind" : "https://graph.microsoft.com/beta/security/attacksimulation/loginPages/1w345678-9abc-def0-123456789a",
			"landing_page@odata_bind" : "https://graph.microsoft.com/beta/security/attacksimulation/landingPages/1c345678-9abc-def0-123456789a",
	}
)

result = await graph_client.security.attack_simulation.simulations.post(request_body)


```