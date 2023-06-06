---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = InvitePostRequestBody()
participants_invitation_participant_info1 = InvitationParticipantInfo()
participants_invitation_participant_info1.@odata_type = '#microsoft.graph.invitationParticipantInfo'

participants_invitation_participant_info1.replaces_call_id = 'a7ebfb2d-871e-419c-87af-27290b22e8db'

participants_invitation_participant_info1identity = IdentitySet()
participants_invitation_participant_info1identity.@odata_type = '#microsoft.graph.identitySet'

participants_invitation_participant_info1identityuser = Identity()
participants_invitation_participant_info1identityuser.@odata_type = '#microsoft.graph.identity'

participants_invitation_participant_info1identityuser.id = '7e1b4346-85a6-4bdd-abe3-d11c5d420efe'

additional_data = [
'identity_provider' => 'AAD', 
];
participants_invitation_participant_info1identityuser.additional_data(additional_data)



participants_invitation_participant_info1identity.user = participants_invitation_participant_info1identityuser

participants_invitation_participant_info1.identity = participants_invitation_participant_info1identity

participantsArray []= participantsInvitationParticipantInfo1;
request_body.participants(participantsArray)


request_body.client_context = 'f2fa86af-3c51-4bc2-8fc0-475452d9764f'




result = await client.communications.calls.by_call_id('call-id').participants.invite.post(request_body = request_body)


```