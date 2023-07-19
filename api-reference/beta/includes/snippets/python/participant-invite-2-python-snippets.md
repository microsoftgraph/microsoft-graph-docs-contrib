---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = InvitePostRequestBody()
participants_invitation_participant_info1 = InvitationParticipantInfo()
participants_invitation_participant_info1.@odata_type = '#microsoft.graph.invitationParticipantInfo'

participants_invitation_participant_info1identity = IdentitySet()
participants_invitation_participant_info1identity.@odata_type = '#microsoft.graph.identitySet'

additional_data = [
'phone' => participants_invitation_participant_info1identity = Phone()
		participants_invitation_participant_info1identity.@odata_type = '#microsoft.graph.identity'

		participants_invitation_participant_info1identity.id = '+12345678901'


participants_invitation_participant_info1identity.phone = phone

];
participants_invitation_participant_info1identity.additional_data(additional_data)



participants_invitation_participant_info1.identity = participants_invitation_participant_info1identity

participantsArray []= participantsInvitationParticipantInfo1;
request_body.participants(participantsArray)


request_body.client_context = 'f2fa86af-3c51-4bc2-8fc0-475452d9764f'




result = await client.communications.calls.by_call_id('call-id').participants.invite.post(request_body = request_body)


```