---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Call()
request_body.@odata_type = '#microsoft.graph.call'

request_body.callback_uri = 'https://bot.contoso.com/callback'

source = ParticipantInfo()
source.@odata_type = '#microsoft.graph.participantInfo'

sourceidentity = IdentitySet()
sourceidentity.@odata_type = '#microsoft.graph.identitySet'

sourceidentityapplication = Identity()
sourceidentityapplication.@odata_type = '#microsoft.graph.identity'

sourceidentityapplication.display_name = 'Calling Bot'

sourceidentityapplication.id = '2891555a-92ff-42e6-80fa-6e1300c6b5c6'


sourceidentity.application = sourceidentityapplication

source.identity = sourceidentity
source.region=null

source.languageId=null


request_body.source = source
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

media_config = AppHostedMediaConfig()
media_config.@odata_type = '#microsoft.graph.appHostedMediaConfig'

media_config.blob = '<Media Session Configuration>'


request_body.media_config = media_config



result = await client.communications.calls.post(request_body = request_body)


```