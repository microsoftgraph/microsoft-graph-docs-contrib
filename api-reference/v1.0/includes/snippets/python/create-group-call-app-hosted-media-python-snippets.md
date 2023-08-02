---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Call()
request_body.@odata_type = '#microsoft.graph.call'

request_body.direction(CallDirection.Outgoing('calldirection.outgoing'))

request_body.subject = 'Create a group call with application hosted media'

request_body.callback_uri = 'https://bot.contoso.com/callback'

source = ParticipantInfo()
source.@odata_type = '#microsoft.graph.participantInfo'

sourceidentity = IdentitySet()
sourceidentity.@odata_type = '#microsoft.graph.identitySet'

sourceidentityapplication = Identity()
sourceidentityapplication.@odata_type = '#microsoft.graph.identity'

sourceidentityapplication.display_name = 'TestBot'

sourceidentityapplication.id = 'dd3885da-f9ab-486b-bfae-85de3d445555'


sourceidentity.application = sourceidentityapplication

source.identity = sourceidentity

request_body.source = source
targets_invitation_participant_info1 = InvitationParticipantInfo()
targets_invitation_participant_info1.@odata_type = '#microsoft.graph.invitationParticipantInfo'

targets_invitation_participant_info1identity = IdentitySet()
targets_invitation_participant_info1identity.@odata_type = '#microsoft.graph.identitySet'

targets_invitation_participant_info1identityuser = Identity()
targets_invitation_participant_info1identityuser.@odata_type = '#microsoft.graph.identity'

targets_invitation_participant_info1identityuser.display_name = 'user1'

targets_invitation_participant_info1identityuser.id = '98da8a1a-1b87-452c-a713-65d3f10b5555'


targets_invitation_participant_info1identity.user = targets_invitation_participant_info1identityuser

targets_invitation_participant_info1.identity = targets_invitation_participant_info1identity

targetsArray []= targetsInvitationParticipantInfo1;
targets_invitation_participant_info2 = InvitationParticipantInfo()
targets_invitation_participant_info2.@odata_type = '#microsoft.graph.invitationParticipantInfo'

targets_invitation_participant_info2identity = IdentitySet()
targets_invitation_participant_info2identity.@odata_type = '#microsoft.graph.identitySet'

targets_invitation_participant_info2identityuser = Identity()
targets_invitation_participant_info2identityuser.@odata_type = '#microsoft.graph.identity'

targets_invitation_participant_info2identityuser.display_name = 'user2'

targets_invitation_participant_info2identityuser.id = 'bf5aae9a-d11d-47a8-93b1-782504c95555'


targets_invitation_participant_info2identity.user = targets_invitation_participant_info2identityuser

targets_invitation_participant_info2.identity = targets_invitation_participant_info2identity

targetsArray []= targetsInvitationParticipantInfo2;
request_body.targets(targetsArray)


request_body.RequestedModalities([request_body.modality(Modality.Audio('modality.audio'))
])

media_config = AppHostedMediaConfig()
media_config.@odata_type = '#microsoft.graph.appHostedMediaConfig'

additional_data = [
'remove_from_default_audio_group' => false,
];
media_config.additional_data(additional_data)



request_body.media_config = media_config



result = await client.communications.calls.post(request_body = request_body)


```