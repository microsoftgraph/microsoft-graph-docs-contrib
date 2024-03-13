---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.ios_general_device_configuration import IosGeneralDeviceConfiguration
from msgraph.generated.models.app_list_item import AppListItem
from msgraph.generated.models.media_content_rating_australia import MediaContentRatingAustralia
from msgraph.generated.models.media_content_rating_canada import MediaContentRatingCanada
from msgraph.generated.models.media_content_rating_france import MediaContentRatingFrance
from msgraph.generated.models.media_content_rating_germany import MediaContentRatingGermany
from msgraph.generated.models.media_content_rating_ireland import MediaContentRatingIreland
from msgraph.generated.models.media_content_rating_japan import MediaContentRatingJapan
from msgraph.generated.models.media_content_rating_new_zealand import MediaContentRatingNewZealand
from msgraph.generated.models.media_content_rating_united_kingdom import MediaContentRatingUnitedKingdom
from msgraph.generated.models.media_content_rating_united_states import MediaContentRatingUnitedStates
from msgraph.generated.models.ios_network_usage_rule import IosNetworkUsageRule

graph_client = GraphServiceClient(credentials, scopes)

request_body = IosGeneralDeviceConfiguration(
	odata_type = "#microsoft.graph.iosGeneralDeviceConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	account_block_modification = True,
	activation_lock_allow_when_supervised = True,
	air_drop_blocked = True,
	air_drop_force_unmanaged_drop_target = True,
	air_play_force_pairing_password_for_outgoing_requests = True,
	apple_watch_block_pairing = True,
	apple_watch_force_wrist_detection = True,
	apple_news_blocked = True,
	apps_single_app_mode_list = [
		AppListItem(
			odata_type = "microsoft.graph.appListItem",
			name = "Name value",
			publisher = "Publisher value",
			app_store_url = "https://example.com/appStoreUrl/",
			app_id = "App Id value",
		),
	],
	apps_visibility_list = [
		AppListItem(
			odata_type = "microsoft.graph.appListItem",
			name = "Name value",
			publisher = "Publisher value",
			app_store_url = "https://example.com/appStoreUrl/",
			app_id = "App Id value",
		),
	],
	apps_visibility_list_type = AppListType.AppsInListCompliant,
	app_store_block_automatic_downloads = True,
	app_store_blocked = True,
	app_store_block_in_app_purchases = True,
	app_store_block_u_i_app_installation = True,
	app_store_require_password = True,
	bluetooth_block_modification = True,
	camera_blocked = True,
	cellular_block_data_roaming = True,
	cellular_block_global_background_fetch_while_roaming = True,
	cellular_block_per_app_data_modification = True,
	cellular_block_personal_hotspot = True,
	cellular_block_voice_roaming = True,
	certificates_block_untrusted_tls_certificates = True,
	classroom_app_block_remote_screen_observation = True,
	classroom_app_force_unprompted_screen_observation = True,
	compliant_apps_list = [
		AppListItem(
			odata_type = "microsoft.graph.appListItem",
			name = "Name value",
			publisher = "Publisher value",
			app_store_url = "https://example.com/appStoreUrl/",
			app_id = "App Id value",
		),
	],
	compliant_app_list_type = AppListType.AppsInListCompliant,
	configuration_profile_block_changes = True,
	definition_lookup_blocked = True,
	device_block_enable_restrictions = True,
	device_block_erase_content_and_settings = True,
	device_block_name_modification = True,
	diagnostic_data_block_submission = True,
	diagnostic_data_block_submission_modification = True,
	documents_block_managed_documents_in_unmanaged_apps = True,
	documents_block_unmanaged_documents_in_managed_apps = True,
	email_in_domain_suffixes = [
		"Email In Domain Suffixes value",
	],
	enterprise_app_block_trust = True,
	enterprise_app_block_trust_modification = True,
	face_time_blocked = True,
	find_my_friends_blocked = True,
	gaming_block_game_center_friends = True,
	gaming_block_multiplayer = True,
	game_center_blocked = True,
	host_pairing_blocked = True,
	i_books_store_blocked = True,
	i_books_store_block_erotica = True,
	i_cloud_block_activity_continuation = True,
	i_cloud_block_backup = True,
	i_cloud_block_document_sync = True,
	i_cloud_block_managed_apps_sync = True,
	i_cloud_block_photo_library = True,
	i_cloud_block_photo_stream_sync = True,
	i_cloud_block_shared_photo_stream = True,
	i_cloud_require_encrypted_backup = True,
	i_tunes_block_explicit_content = True,
	i_tunes_block_music_service = True,
	i_tunes_block_radio = True,
	keyboard_block_auto_correct = True,
	keyboard_block_dictation = True,
	keyboard_block_predictive = True,
	keyboard_block_shortcuts = True,
	keyboard_block_spell_check = True,
	kiosk_mode_allow_assistive_speak = True,
	kiosk_mode_allow_assistive_touch_settings = True,
	kiosk_mode_allow_auto_lock = True,
	kiosk_mode_allow_color_inversion_settings = True,
	kiosk_mode_allow_ringer_switch = True,
	kiosk_mode_allow_screen_rotation = True,
	kiosk_mode_allow_sleep_button = True,
	kiosk_mode_allow_touchscreen = True,
	kiosk_mode_allow_voice_over_settings = True,
	kiosk_mode_allow_volume_buttons = True,
	kiosk_mode_allow_zoom_settings = True,
	kiosk_mode_app_store_url = "https://example.com/kioskModeAppStoreUrl/",
	kiosk_mode_built_in_app_id = "Kiosk Mode Built In App Id value",
	kiosk_mode_require_assistive_touch = True,
	kiosk_mode_require_color_inversion = True,
	kiosk_mode_require_mono_audio = True,
	kiosk_mode_require_voice_over = True,
	kiosk_mode_require_zoom = True,
	kiosk_mode_managed_app_id = "Kiosk Mode Managed App Id value",
	lock_screen_block_control_center = True,
	lock_screen_block_notification_view = True,
	lock_screen_block_passbook = True,
	lock_screen_block_today_view = True,
	media_content_rating_australia = MediaContentRatingAustralia(
		odata_type = "microsoft.graph.mediaContentRatingAustralia",
		movie_rating = RatingAustraliaMoviesType.AllBlocked,
		tv_rating = RatingAustraliaTelevisionType.AllBlocked,
	),
	media_content_rating_canada = MediaContentRatingCanada(
		odata_type = "microsoft.graph.mediaContentRatingCanada",
		movie_rating = RatingCanadaMoviesType.AllBlocked,
		tv_rating = RatingCanadaTelevisionType.AllBlocked,
	),
	media_content_rating_france = MediaContentRatingFrance(
		odata_type = "microsoft.graph.mediaContentRatingFrance",
		movie_rating = RatingFranceMoviesType.AllBlocked,
		tv_rating = RatingFranceTelevisionType.AllBlocked,
	),
	media_content_rating_germany = MediaContentRatingGermany(
		odata_type = "microsoft.graph.mediaContentRatingGermany",
		movie_rating = RatingGermanyMoviesType.AllBlocked,
		tv_rating = RatingGermanyTelevisionType.AllBlocked,
	),
	media_content_rating_ireland = MediaContentRatingIreland(
		odata_type = "microsoft.graph.mediaContentRatingIreland",
		movie_rating = RatingIrelandMoviesType.AllBlocked,
		tv_rating = RatingIrelandTelevisionType.AllBlocked,
	),
	media_content_rating_japan = MediaContentRatingJapan(
		odata_type = "microsoft.graph.mediaContentRatingJapan",
		movie_rating = RatingJapanMoviesType.AllBlocked,
		tv_rating = RatingJapanTelevisionType.AllBlocked,
	),
	media_content_rating_new_zealand = MediaContentRatingNewZealand(
		odata_type = "microsoft.graph.mediaContentRatingNewZealand",
		movie_rating = RatingNewZealandMoviesType.AllBlocked,
		tv_rating = RatingNewZealandTelevisionType.AllBlocked,
	),
	media_content_rating_united_kingdom = MediaContentRatingUnitedKingdom(
		odata_type = "microsoft.graph.mediaContentRatingUnitedKingdom",
		movie_rating = RatingUnitedKingdomMoviesType.AllBlocked,
		tv_rating = RatingUnitedKingdomTelevisionType.AllBlocked,
	),
	media_content_rating_united_states = MediaContentRatingUnitedStates(
		odata_type = "microsoft.graph.mediaContentRatingUnitedStates",
		movie_rating = RatingUnitedStatesMoviesType.AllBlocked,
		tv_rating = RatingUnitedStatesTelevisionType.AllBlocked,
	),
	network_usage_rules = [
		IosNetworkUsageRule(
			odata_type = "microsoft.graph.iosNetworkUsageRule",
			managed_apps = [
				AppListItem(
					odata_type = "microsoft.graph.appListItem",
					name = "Name value",
					publisher = "Publisher value",
					app_store_url = "https://example.com/appStoreUrl/",
					app_id = "App Id value",
				),
			],
			cellular_data_block_when_roaming = True,
			cellular_data_blocked = True,
		),
	],
	media_content_rating_apps = RatingAppsType.AllBlocked,
	messages_blocked = True,
	notifications_block_settings_modification = True,
	passcode_block_fingerprint_unlock = True,
	passcode_block_fingerprint_modification = True,
	passcode_block_modification = True,
	passcode_block_simple = True,
	passcode_expiration_days = 6,
	passcode_minimum_length = 5,
	passcode_minutes_of_inactivity_before_lock = 5,
	passcode_minutes_of_inactivity_before_screen_timeout = 14,
	passcode_minimum_character_set_count = 0,
	passcode_previous_passcode_block_count = 2,
	passcode_sign_in_failure_count_before_wipe = 4,
	passcode_required_type = RequiredPasswordType.Alphanumeric,
	passcode_required = True,
	podcasts_blocked = True,
	safari_block_autofill = True,
	safari_block_java_script = True,
	safari_block_popups = True,
	safari_blocked = True,
	safari_cookie_settings = WebBrowserCookieSettings.BlockAlways,
	safari_managed_domains = [
		"Safari Managed Domains value",
	],
	safari_password_auto_fill_domains = [
		"Safari Password Auto Fill Domains value",
	],
	safari_require_fraud_warning = True,
	screen_capture_blocked = True,
	siri_blocked = True,
	siri_blocked_when_locked = True,
	siri_block_user_generated_content = True,
	siri_require_profanity_filter = True,
	spotlight_block_internet_results = True,
	voice_dialing_blocked = True,
	wallpaper_block_modification = True,
	wi_fi_connect_only_to_configured_networks = True,
)

result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body)


```