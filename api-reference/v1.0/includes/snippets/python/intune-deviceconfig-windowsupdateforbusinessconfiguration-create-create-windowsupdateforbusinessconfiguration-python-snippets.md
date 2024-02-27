---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.windows_update_for_business_configuration import WindowsUpdateForBusinessConfiguration
from msgraph.generated.models.windows_update_scheduled_install import WindowsUpdateScheduledInstall

graph_client = GraphServiceClient(credentials, scopes)

request_body = WindowsUpdateForBusinessConfiguration(
	odata_type = "#microsoft.graph.windowsUpdateForBusinessConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	delivery_optimization_mode = WindowsDeliveryOptimizationMode.HttpOnly,
	prerelease_features = PrereleaseFeatures.SettingsOnly,
	automatic_update_mode = AutomaticUpdateMode.NotifyDownload,
	microsoft_update_service_allowed = True,
	drivers_excluded = True,
	installation_schedule = WindowsUpdateScheduledInstall(
		odata_type = "microsoft.graph.windowsUpdateScheduledInstall",
		scheduled_install_day = WeeklySchedule.Everyday,
		scheduled_install_time = "11:59:31.3170000",
	),
	quality_updates_deferral_period_in_days = 2,
	feature_updates_deferral_period_in_days = 2,
	quality_updates_paused = True,
	feature_updates_paused = True,
	quality_updates_pause_expiry_date_time = "2017-01-01T00:00:22.9594683-08:00",
	feature_updates_pause_expiry_date_time = "2016-12-31T23:58:08.068669-08:00",
	business_ready_updates_only = WindowsUpdateType.All,
	skip_checks_before_restart = True,
	update_weeks = WindowsUpdateForBusinessUpdateWeeks.FirstWeek,
	quality_updates_pause_start_date = "2016-12-31",
	feature_updates_pause_start_date = "2016-12-31",
	feature_updates_rollback_window_in_days = 2,
	quality_updates_will_be_rolled_back = True,
	feature_updates_will_be_rolled_back = True,
	quality_updates_rollback_start_date_time = "2016-12-31T23:57:01.05526-08:00",
	feature_updates_rollback_start_date_time = "2017-01-01T00:03:21.6080517-08:00",
	engaged_restart_deadline_in_days = 12,
	engaged_restart_snooze_schedule_in_days = 2,
	engaged_restart_transition_schedule_in_days = 6,
	deadline_for_feature_updates_in_days = 15,
	deadline_for_quality_updates_in_days = 15,
	deadline_grace_period_in_days = 9,
	postpone_reboot_until_after_deadline = True,
	auto_restart_notification_dismissal = AutoRestartNotificationDismissalMethod.Automatic,
	schedule_restart_warning_in_hours = 13,
	schedule_imminent_restart_warning_in_minutes = 7,
	user_pause_access = Enablement.Enabled,
	user_windows_update_scan_access = Enablement.Enabled,
	update_notification_level = WindowsUpdateNotificationDisplayOption.DefaultNotifications,
	allow_windows11_upgrade = True,
)

result = await graph_client.device_management.device_configurations.post(request_body)


```