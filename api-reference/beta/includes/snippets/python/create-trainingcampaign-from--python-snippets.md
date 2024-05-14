---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.training_campaign import TrainingCampaign
from msgraph.generated.models.email_identity import EmailIdentity
from msgraph.generated.models.account_target_content import AccountTargetContent
from msgraph.generated.models.end_user_notification_setting import EndUserNotificationSetting
from msgraph.generated.models.training_setting import TrainingSetting
from msgraph.generated.models.campaign_schedule import CampaignSchedule

graph_client = GraphServiceClient(credentials, scopes)

request_body = TrainingCampaign(
	display_name = "Graph Training Campaign",
	description = "Graph Training Campaign Description",
	created_by = EmailIdentity(
		email = "john@contoso.com",
	),
	last_modified_by = EmailIdentity(
		email = "john@contoso.com",
	),
	included_account_target = AccountTargetContent(
		type = AccountTargetContentType.AddressBook,
		additional_data = {
				"account_target_emails" : [
					"john@contoso.com",
				],
		}
	),
	end_user_notification_setting = EndUserNotificationSetting(
		notification_preference = EndUserNotificationPreference.Microsoft,
		setting_type = EndUserNotificationSettingType.TrainingSelected,
		additional_data = {
				"training_reminder" : {
						"delivery_frequency" : "weekly",
						"end_user_notification@odata_bind" : "https://graph.microsoft.com/beta/security/attackSimulation/endUserNotifications('fe521249-9901-4584-a987-026a9980c58e')",
						"default_language" : "en",
				},
				"training_assignment" : {
						"end_user_notification@odata_bind" : "https://graph.microsoft.com/beta/security/attackSimulation/endUserNotifications('36fb4dc1-7c37-4b96-9096-12e6d6014fae')",
						"default_language" : "en",
				},
		}
	),
	training_setting = TrainingSetting(
		setting_type = TrainingSettingType.MicrosoftCustom,
		additional_data = {
				"training_assignment_mappings" : [
					{
							"assigned_to" : [
								"allUsers",
							],
							"training@odata_bind" : "https://graph.microsoft.com/beta/security/attackSimulation/trainings('40454905-dc26-4f36-b854-3042a5362cb3')",
					},
					{
							"assigned_to" : [
								"allUsers",
							],
							"training@odata_bind" : "https://graph.microsoft.com/beta/security/attackSimulation/trainings('ea70ae06-3859-4818-be9d-270ee81d80a4')",
					},
					{
							"assigned_to" : [
								"allUsers",
							],
							"training@odata_bind" : "https://graph.microsoft.com/beta/security/attackSimulation/trainings('d733d88c-1b5a-48e3-a588-9910e41ac21d')",
					},
				],
		}
	),
	campaign_schedule = CampaignSchedule(
		launch_date_time = "2024-02-15T07:59:44Z",
		completion_date_time = "2024-02-18T07:59:44Z",
		status = CampaignStatus.Scheduled,
	),
)

result = await graph_client.security.attack_simulation.training_campaigns.post(request_body)


```