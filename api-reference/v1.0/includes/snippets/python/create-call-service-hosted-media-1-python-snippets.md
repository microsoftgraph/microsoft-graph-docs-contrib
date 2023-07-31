---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Call()
request_body.@odata_type = '#microsoft.graph.call'

request_body.callback_uri = 'https://bot.contoso.com/callback'

targets_invitation_participant_info1 = InvitationParticipantInfo()
targets_invitation_participant_info1.@odata_type = '#microsoft.graph.invitationParticipantInfo'

targets_invitation_participant_info1identity = IdentitySet()
targets_invitation_participant_info1identity.@odata_type = '#microsoft.graph.identitySet'

targets_invitation_participant_info1identityuser = Identity()
targets_invitation_participant_info1identityuser.@odata_type = '#microsoft.graph.identity'

targets_invitation_participant_info1identityuser.display_name = 'John'

targets_invitation_participant_info1identityuser.id = '112f7296-5fa4-42ca-bae8-6a692b15d4b8'


targets_invitation_participant_info1identity.user = targets_invitation_participant_info1identityuser

targets_invitation_participant_info1.identity = targets_invitation_participant_info1identity

targetsArray []= targetsInvitationParticipantInfo1;
request_body.targets(targetsArray)


request_body.RequestedModalities([request_body.modality(Modality.Audio('modality.audio'))
])

call_options = OutgoingCallOptions()
call_options.@odata_type = '#microsoft.graph.outgoingCallOptions'

call_options.is_content_sharing_notification_enabled = True


request_body.call_options = call_options
media_config = ServiceHostedMediaConfig()
media_config.@odata_type = '#microsoft.graph.serviceHostedMediaConfig'


request_body.media_config = media_config



result = await client.communications.calls.post(request_body = request_body)


```