---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = IosGeneralDeviceConfiguration()
request_body.@odata_type = '#microsoft.graph.iosGeneralDeviceConfiguration'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.account_block_modification = True

request_body.activation_lock_allow_when_supervised = True

request_body.air_drop_blocked = True

request_body.air_drop_force_unmanaged_drop_target = True

request_body.air_play_force_pairing_password_for_outgoing_requests = True

request_body.apple_watch_block_pairing = True

request_body.apple_watch_force_wrist_detection = True

request_body.apple_news_blocked = True

apps_single_app_mode_list_app_list_item1 = AppListItem()
apps_single_app_mode_list_app_list_item1.@odata_type = 'microsoft.graph.appListItem'

apps_single_app_mode_list_app_list_item1.name = 'Name value'

apps_single_app_mode_list_app_list_item1.publisher = 'Publisher value'

apps_single_app_mode_list_app_list_item1.app_store_url = 'https://example.com/appStoreUrl/'

apps_single_app_mode_list_app_list_item1.app_id = 'App Id value'


appsSingleAppModeListArray []= appsSingleAppModeListAppListItem1;
request_body.appssingleappmodelist(appsSingleAppModeListArray)


apps_visibility_list_app_list_item1 = AppListItem()
apps_visibility_list_app_list_item1.@odata_type = 'microsoft.graph.appListItem'

apps_visibility_list_app_list_item1.name = 'Name value'

apps_visibility_list_app_list_item1.publisher = 'Publisher value'

apps_visibility_list_app_list_item1.app_store_url = 'https://example.com/appStoreUrl/'

apps_visibility_list_app_list_item1.app_id = 'App Id value'


appsVisibilityListArray []= appsVisibilityListAppListItem1;
request_body.appsvisibilitylist(appsVisibilityListArray)


request_body.appsvisibilitylisttype(AppListType.AppsInListCompliant('applisttype.appsinlistcompliant'))

request_body.app_store_block_automatic_downloads = True

request_body.app_store_blocked = True

request_body.app_store_block_in_app_purchases = True

request_body.app_store_block_u_i_app_installation = True

request_body.app_store_require_password = True

request_body.bluetooth_block_modification = True

request_body.camera_blocked = True

request_body.cellular_block_data_roaming = True

request_body.cellular_block_global_background_fetch_while_roaming = True

request_body.cellular_block_per_app_data_modification = True

request_body.cellular_block_personal_hotspot = True

request_body.cellular_block_voice_roaming = True

request_body.certificates_block_untrusted_tls_certificates = True

request_body.classroom_app_block_remote_screen_observation = True

request_body.classroom_app_force_unprompted_screen_observation = True

compliant_apps_list_app_list_item1 = AppListItem()
compliant_apps_list_app_list_item1.@odata_type = 'microsoft.graph.appListItem'

compliant_apps_list_app_list_item1.name = 'Name value'

compliant_apps_list_app_list_item1.publisher = 'Publisher value'

compliant_apps_list_app_list_item1.app_store_url = 'https://example.com/appStoreUrl/'

compliant_apps_list_app_list_item1.app_id = 'App Id value'


compliantAppsListArray []= compliantAppsListAppListItem1;
request_body.compliantappslist(compliantAppsListArray)


request_body.compliantapplisttype(AppListType.AppsInListCompliant('applisttype.appsinlistcompliant'))

request_body.configuration_profile_block_changes = True

request_body.definition_lookup_blocked = True

request_body.device_block_enable_restrictions = True

request_body.device_block_erase_content_and_settings = True

request_body.device_block_name_modification = True

request_body.diagnostic_data_block_submission = True

request_body.diagnostic_data_block_submission_modification = True

request_body.documents_block_managed_documents_in_unmanaged_apps = True

request_body.documents_block_unmanaged_documents_in_managed_apps = True

request_body.EmailInDomainSuffixes(['Email In Domain Suffixes value', ])

request_body.enterprise_app_block_trust = True

request_body.enterprise_app_block_trust_modification = True

request_body.face_time_blocked = True

request_body.find_my_friends_blocked = True

request_body.gaming_block_game_center_friends = True

request_body.gaming_block_multiplayer = True

request_body.game_center_blocked = True

request_body.host_pairing_blocked = True

request_body.i_books_store_blocked = True

request_body.i_books_store_block_erotica = True

request_body.i_cloud_block_activity_continuation = True

request_body.i_cloud_block_backup = True

request_body.i_cloud_block_document_sync = True

request_body.i_cloud_block_managed_apps_sync = True

request_body.i_cloud_block_photo_library = True

request_body.i_cloud_block_photo_stream_sync = True

request_body.i_cloud_block_shared_photo_stream = True

request_body.i_cloud_require_encrypted_backup = True

request_body.i_tunes_block_explicit_content = True

request_body.i_tunes_block_music_service = True

request_body.i_tunes_block_radio = True

request_body.keyboard_block_auto_correct = True

request_body.keyboard_block_dictation = True

request_body.keyboard_block_predictive = True

request_body.keyboard_block_shortcuts = True

request_body.keyboard_block_spell_check = True

request_body.kiosk_mode_allow_assistive_speak = True

request_body.kiosk_mode_allow_assistive_touch_settings = True

request_body.kiosk_mode_allow_auto_lock = True

request_body.kiosk_mode_allow_color_inversion_settings = True

request_body.kiosk_mode_allow_ringer_switch = True

request_body.kiosk_mode_allow_screen_rotation = True

request_body.kiosk_mode_allow_sleep_button = True

request_body.kiosk_mode_allow_touchscreen = True

request_body.kiosk_mode_allow_voice_over_settings = True

request_body.kiosk_mode_allow_volume_buttons = True

request_body.kiosk_mode_allow_zoom_settings = True

request_body.kiosk_mode_app_store_url = 'https://example.com/kioskModeAppStoreUrl/'

request_body.kiosk_mode_built_in_app_id = 'Kiosk Mode Built In App Id value'

request_body.kiosk_mode_require_assistive_touch = True

request_body.kiosk_mode_require_color_inversion = True

request_body.kiosk_mode_require_mono_audio = True

request_body.kiosk_mode_require_voice_over = True

request_body.kiosk_mode_require_zoom = True

request_body.kiosk_mode_managed_app_id = 'Kiosk Mode Managed App Id value'

request_body.lock_screen_block_control_center = True

request_body.lock_screen_block_notification_view = True

request_body.lock_screen_block_passbook = True

request_body.lock_screen_block_today_view = True

media_content_rating_australia = MediaContentRatingAustralia()
media_content_rating_australia.@odata_type = 'microsoft.graph.mediaContentRatingAustralia'

media_content_rating_australia.movierating(RatingAustraliaMoviesType.AllBlocked('ratingaustraliamoviestype.allblocked'))

media_content_rating_australia.tvrating(RatingAustraliaTelevisionType.AllBlocked('ratingaustraliatelevisiontype.allblocked'))


request_body.media_content_rating_australia = media_content_rating_australia
media_content_rating_canada = MediaContentRatingCanada()
media_content_rating_canada.@odata_type = 'microsoft.graph.mediaContentRatingCanada'

media_content_rating_canada.movierating(RatingCanadaMoviesType.AllBlocked('ratingcanadamoviestype.allblocked'))

media_content_rating_canada.tvrating(RatingCanadaTelevisionType.AllBlocked('ratingcanadatelevisiontype.allblocked'))


request_body.media_content_rating_canada = media_content_rating_canada
media_content_rating_france = MediaContentRatingFrance()
media_content_rating_france.@odata_type = 'microsoft.graph.mediaContentRatingFrance'

media_content_rating_france.movierating(RatingFranceMoviesType.AllBlocked('ratingfrancemoviestype.allblocked'))

media_content_rating_france.tvrating(RatingFranceTelevisionType.AllBlocked('ratingfrancetelevisiontype.allblocked'))


request_body.media_content_rating_france = media_content_rating_france
media_content_rating_germany = MediaContentRatingGermany()
media_content_rating_germany.@odata_type = 'microsoft.graph.mediaContentRatingGermany'

media_content_rating_germany.movierating(RatingGermanyMoviesType.AllBlocked('ratinggermanymoviestype.allblocked'))

media_content_rating_germany.tvrating(RatingGermanyTelevisionType.AllBlocked('ratinggermanytelevisiontype.allblocked'))


request_body.media_content_rating_germany = media_content_rating_germany
media_content_rating_ireland = MediaContentRatingIreland()
media_content_rating_ireland.@odata_type = 'microsoft.graph.mediaContentRatingIreland'

media_content_rating_ireland.movierating(RatingIrelandMoviesType.AllBlocked('ratingirelandmoviestype.allblocked'))

media_content_rating_ireland.tvrating(RatingIrelandTelevisionType.AllBlocked('ratingirelandtelevisiontype.allblocked'))


request_body.media_content_rating_ireland = media_content_rating_ireland
media_content_rating_japan = MediaContentRatingJapan()
media_content_rating_japan.@odata_type = 'microsoft.graph.mediaContentRatingJapan'

media_content_rating_japan.movierating(RatingJapanMoviesType.AllBlocked('ratingjapanmoviestype.allblocked'))

media_content_rating_japan.tvrating(RatingJapanTelevisionType.AllBlocked('ratingjapantelevisiontype.allblocked'))


request_body.media_content_rating_japan = media_content_rating_japan
media_content_rating_new_zealand = MediaContentRatingNewZealand()
media_content_rating_new_zealand.@odata_type = 'microsoft.graph.mediaContentRatingNewZealand'

media_content_rating_new_zealand.movierating(RatingNewZealandMoviesType.AllBlocked('ratingnewzealandmoviestype.allblocked'))

media_content_rating_new_zealand.tvrating(RatingNewZealandTelevisionType.AllBlocked('ratingnewzealandtelevisiontype.allblocked'))


request_body.media_content_rating_new_zealand = media_content_rating_new_zealand
media_content_rating_united_kingdom = MediaContentRatingUnitedKingdom()
media_content_rating_united_kingdom.@odata_type = 'microsoft.graph.mediaContentRatingUnitedKingdom'

media_content_rating_united_kingdom.movierating(RatingUnitedKingdomMoviesType.AllBlocked('ratingunitedkingdommoviestype.allblocked'))

media_content_rating_united_kingdom.tvrating(RatingUnitedKingdomTelevisionType.AllBlocked('ratingunitedkingdomtelevisiontype.allblocked'))


request_body.media_content_rating_united_kingdom = media_content_rating_united_kingdom
media_content_rating_united_states = MediaContentRatingUnitedStates()
media_content_rating_united_states.@odata_type = 'microsoft.graph.mediaContentRatingUnitedStates'

media_content_rating_united_states.movierating(RatingUnitedStatesMoviesType.AllBlocked('ratingunitedstatesmoviestype.allblocked'))

media_content_rating_united_states.tvrating(RatingUnitedStatesTelevisionType.AllBlocked('ratingunitedstatestelevisiontype.allblocked'))


request_body.media_content_rating_united_states = media_content_rating_united_states
network_usage_rules_ios_network_usage_rule1 = IosNetworkUsageRule()
network_usage_rules_ios_network_usage_rule1.@odata_type = 'microsoft.graph.iosNetworkUsageRule'

managed_apps_app_list_item1 = AppListItem()
managed_apps_app_list_item1.@odata_type = 'microsoft.graph.appListItem'

managed_apps_app_list_item1.name = 'Name value'

managed_apps_app_list_item1.publisher = 'Publisher value'

managed_apps_app_list_item1.app_store_url = 'https://example.com/appStoreUrl/'

managed_apps_app_list_item1.app_id = 'App Id value'


managedAppsArray []= managedAppsAppListItem1;
network_usage_rules_ios_network_usage_rule1.managedapps(managedAppsArray)


network_usage_rules_ios_network_usage_rule1.cellular_data_block_when_roaming = True

network_usage_rules_ios_network_usage_rule1.cellular_data_blocked = True


networkUsageRulesArray []= networkUsageRulesIosNetworkUsageRule1;
request_body.networkusagerules(networkUsageRulesArray)


request_body.mediacontentratingapps(RatingAppsType.AllBlocked('ratingappstype.allblocked'))

request_body.messages_blocked = True

request_body.notifications_block_settings_modification = True

request_body.passcode_block_fingerprint_unlock = True

request_body.passcode_block_fingerprint_modification = True

request_body.passcode_block_modification = True

request_body.passcode_block_simple = True

request_body.PasscodeExpirationDays = 6

request_body.PasscodeMinimumLength = 5

request_body.PasscodeMinutesOfInactivityBeforeLock = 5

request_body.PasscodeMinutesOfInactivityBeforeScreenTimeout = 14

request_body.PasscodeMinimumCharacterSetCount = 0

request_body.PasscodePreviousPasscodeBlockCount = 2

request_body.PasscodeSignInFailureCountBeforeWipe = 4

request_body.passcoderequiredtype(RequiredPasswordType.Alphanumeric('requiredpasswordtype.alphanumeric'))

request_body.passcode_required = True

request_body.podcasts_blocked = True

request_body.safari_block_autofill = True

request_body.safari_block_java_script = True

request_body.safari_block_popups = True

request_body.safari_blocked = True

request_body.safaricookiesettings(WebBrowserCookieSettings.BlockAlways('webbrowsercookiesettings.blockalways'))

request_body.SafariManagedDomains(['Safari Managed Domains value', ])

request_body.SafariPasswordAutoFillDomains(['Safari Password Auto Fill Domains value', ])

request_body.safari_require_fraud_warning = True

request_body.screen_capture_blocked = True

request_body.siri_blocked = True

request_body.siri_blocked_when_locked = True

request_body.siri_block_user_generated_content = True

request_body.siri_require_profanity_filter = True

request_body.spotlight_block_internet_results = True

request_body.voice_dialing_blocked = True

request_body.wallpaper_block_modification = True

request_body.wi_fi_connect_only_to_configured_networks = True




result = await client.device_management.device_configurations.post(request_body = request_body)


```