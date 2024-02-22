---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.windows10_team_general_configuration import Windows10TeamGeneralConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = Windows10TeamGeneralConfiguration(
	odata_type = "#microsoft.graph.windows10TeamGeneralConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	azure_operational_insights_block_telemetry = True,
	azure_operational_insights_workspace_id = "Azure Operational Insights Workspace Id value",
	azure_operational_insights_workspace_key = "Azure Operational Insights Workspace Key value",
	connect_app_block_auto_launch = True,
	maintenance_window_blocked = True,
	maintenance_window_duration_in_hours = 0,
	maintenance_window_start_time = "11:59:09.3130000",
	miracast_channel = MiracastChannel.One,
	miracast_blocked = True,
	miracast_require_pin = True,
	settings_block_my_meetings_and_files = True,
	settings_block_session_resume = True,
	settings_block_signin_suggestions = True,
	settings_default_volume = 5,
	settings_screen_timeout_in_minutes = 14,
	settings_session_timeout_in_minutes = 15,
	settings_sleep_timeout_in_minutes = 13,
	welcome_screen_block_automatic_wake_up = True,
	welcome_screen_background_image_url = "https://example.com/welcomeScreenBackgroundImageUrl/",
	welcome_screen_meeting_information = WelcomeScreenMeetingInformation.ShowOrganizerAndTimeOnly,
)

result = await graph_client.device_management.device_configurations.post(request_body)


```