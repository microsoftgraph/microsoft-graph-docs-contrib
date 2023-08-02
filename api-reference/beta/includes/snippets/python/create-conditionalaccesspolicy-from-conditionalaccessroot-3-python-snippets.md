---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ConditionalAccessPolicy()
request_body.display_name = 'Demo app for documentation'

request_body.state(ConditionalAccessPolicyState.Disabled('conditionalaccesspolicystate.disabled'))

conditions = ConditionalAccessConditionSet()
conditions.SignInRiskLevels([conditions.risklevel(RiskLevel.High('risklevel.high'))
conditions.risklevel(RiskLevel.Medium('risklevel.medium'))
])

conditions.ClientAppTypes([conditions.conditionalaccessclientapp(ConditionalAccessClientApp.MobileAppsAndDesktopClients('conditionalaccessclientapp.mobileappsanddesktopclients'))
conditions.conditionalaccessclientapp(ConditionalAccessClientApp.ExchangeActiveSync('conditionalaccessclientapp.exchangeactivesync'))
conditions.conditionalaccessclientapp(ConditionalAccessClientApp.Other('conditionalaccessclientapp.other'))
])

conditionsapplications = ConditionalAccessApplications()
conditionsapplications.IncludeApplications(['All', ])

conditionsapplications.ExcludeApplications(['499b84ac-1321-427f-aa17-267ca6975798', '00000007-0000-0000-c000-000000000000', 'de8bc8b5-d9f9-48b1-a8ad-b748da725064', '00000012-0000-0000-c000-000000000000', '797f4846-ba00-4fd7-ba43-dac1f8f63013', '05a65629-4c1b-48c1-a78b-804c4abdd4af', '7df0a125-d3be-4c96-aa54-591f83ff541c', ])

conditionsapplications.IncludeUserActions([])


conditions.applications = conditionsapplications
conditionsusers = ConditionalAccessUsers()
conditionsusers.IncludeUsers(['a702a13d-a437-4a07-8a7e-8c052de62dfd', ])

conditionsusers.ExcludeUsers(['124c5b6a-ffa5-483a-9b88-04c3fce5574a', 'GuestsOrExternalUsers', ])

conditionsusers.IncludeGroups([])

conditionsusers.ExcludeGroups([])

conditionsusers.IncludeRoles(['9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3', 'cf1c38e5-3621-4004-a7cb-879624dced7c', 'c4e39bd9-1100-46d3-8c65-fb160da0071f', ])

conditionsusers.ExcludeRoles(['b0f54661-2d74-4c50-afa3-1ec803f12efe', ])


conditions.users = conditionsusers
conditionsplatforms = ConditionalAccessPlatforms()
conditionsplatforms.IncludePlatforms([conditionsplatforms.conditionalaccessdeviceplatform(ConditionalAccessDevicePlatform.All('conditionalaccessdeviceplatform.all'))
])

conditionsplatforms.ExcludePlatforms([conditionsplatforms.conditionalaccessdeviceplatform(ConditionalAccessDevicePlatform.IOS('conditionalaccessdeviceplatform.ios'))
conditionsplatforms.conditionalaccessdeviceplatform(ConditionalAccessDevicePlatform.WindowsPhone('conditionalaccessdeviceplatform.windowsphone'))
])


conditions.platforms = conditionsplatforms
conditionslocations = ConditionalAccessLocations()
conditionslocations.IncludeLocations(['AllTrusted', ])

conditionslocations.ExcludeLocations(['00000000-0000-0000-0000-000000000000', 'd2136c9c-b049-47ae-b9cf-316e04ef7198', ])


conditions.locations = conditionslocations
conditionsdevice_states = ConditionalAccessDeviceStates()
conditionsdevice_states.IncludeStates(['All', ])

conditionsdevice_states.ExcludeStates(['Compliant', ])


conditions.device_states = conditionsdevice_states

request_body.conditions = conditions
grant_controls = ConditionalAccessGrantControls()
grant_controls.operator = 'OR'

grant_controls.BuiltInControls([grant_controls.conditionalaccessgrantcontrol(ConditionalAccessGrantControl.Mfa('conditionalaccessgrantcontrol.mfa'))
grant_controls.conditionalaccessgrantcontrol(ConditionalAccessGrantControl.CompliantDevice('conditionalaccessgrantcontrol.compliantdevice'))
grant_controls.conditionalaccessgrantcontrol(ConditionalAccessGrantControl.DomainJoinedDevice('conditionalaccessgrantcontrol.domainjoineddevice'))
grant_controls.conditionalaccessgrantcontrol(ConditionalAccessGrantControl.ApprovedApplication('conditionalaccessgrantcontrol.approvedapplication'))
grant_controls.conditionalaccessgrantcontrol(ConditionalAccessGrantControl.CompliantApplication('conditionalaccessgrantcontrol.compliantapplication'))
])

grant_controls.CustomAuthenticationFactors([])

grant_controls.TermsOfUse(['ce580154-086a-40fd-91df-8a60abac81a0', '7f29d675-caff-43e1-8a53-1b8516ed2075', ])


request_body.grant_controls = grant_controls
session_controls = ConditionalAccessSessionControls()
session_controls.applicationEnforcedRestrictions=null

session_controls.persistentBrowser=null

session_controlscloud_app_security = CloudAppSecuritySessionControl()
session_controlscloud_app_security.cloudappsecuritytype(CloudAppSecuritySessionControlType.BlockDownloads('cloudappsecuritysessioncontroltype.blockdownloads'))

session_controlscloud_app_security.is_enabled = True


session_controls.cloud_app_security = session_controlscloud_app_security
session_controlssign_in_frequency = SignInFrequencySessionControl()
session_controlssign_in_frequency.Value = 4

session_controlssign_in_frequency.type(SigninFrequencyType.Hours('signinfrequencytype.hours'))

session_controlssign_in_frequency.is_enabled = True


session_controls.sign_in_frequency = session_controlssign_in_frequency

request_body.session_controls = session_controls



result = await client.identity.conditional_access.policies.post(request_body = request_body)


```