---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MobileThreatDefenseConnector()
request_body.@odata_type = '#microsoft.graph.mobileThreatDefenseConnector'

request_body.lastHeartbeatDateTime = DateTime('2016-12-31T23:59:37.9174975-08:00')

request_body.partnerstate(MobileThreatPartnerTenantState.Available('mobilethreatpartnertenantstate.available'))

request_body.android_mobile_application_management_enabled = True

request_body.ios_mobile_application_management_enabled = True

request_body.android_enabled = True

request_body.ios_enabled = True

request_body.windows_enabled = True

request_body.android_device_blocked_on_missing_partner_data = True

request_body.ios_device_blocked_on_missing_partner_data = True

request_body.windows_device_blocked_on_missing_partner_data = True

request_body.partner_unsupported_os_version_blocked = True

request_body.PartnerUnresponsivenessThresholdInDays = 6

request_body.allow_partner_to_collect_i_o_s_application_metadata = True

request_body.allow_partner_to_collect_i_o_s_personal_application_metadata = True

request_body.microsoft_defender_for_endpoint_attach_enabled = True




result = await client.device_management.mobile_threat_defense_connectors.post(request_body = request_body)


```