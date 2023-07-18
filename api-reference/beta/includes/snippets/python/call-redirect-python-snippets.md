---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RedirectPostRequestBody()
targets_invitation_participant_info1 = InvitationParticipantInfo()
targets_invitation_participant_info1.@odata_type = '#microsoft.graph.invitationParticipantInfo'

targets_invitation_participant_info1identity = IdentitySet()
targets_invitation_participant_info1identity.@odata_type = '#microsoft.graph.identitySet'

additional_data = [
'phone' => targets_invitation_participant_info1identity = Phone()
		targets_invitation_participant_info1identity.@odata_type = '#microsoft.graph.identity'

		targets_invitation_participant_info1identity.id = '+12345678901'


targets_invitation_participant_info1identity.phone = phone

];
targets_invitation_participant_info1identity.additional_data(additional_data)



targets_invitation_participant_info1.identity = targets_invitation_participant_info1identity

targetsArray []= targetsInvitationParticipantInfo1;
request_body.targets(targetsArray)


request_body.callback_uri = 'https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039'




await client.communications.calls.by_call_id('call-id').redirect.post(request_body = request_body)


```