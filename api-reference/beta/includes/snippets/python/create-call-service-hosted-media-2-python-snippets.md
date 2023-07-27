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

additional_data = [
'application_instance' => sourceidentity = ApplicationInstance()
		sourceidentity.@odata_type = '#microsoft.graph.identity'

		sourceidentity.display_name = 'Calling Bot'

		sourceidentity.id = '3d913abb-aec0-4964-8fa6-3c6850c4f278'


sourceidentity.application_instance = applicationInstance

];
sourceidentity.additional_data(additional_data)



source.identity = sourceidentity
source.countryCode=null

source.endpointType=null

source.region=null

source.languageId=null


request_body.source = source
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


request_body.RequestedModalities([request_body.modality(Modality.Audio('modality.audio'))
])

media_config = ServiceHostedMediaConfig()
media_config.@odata_type = '#microsoft.graph.serviceHostedMediaConfig'


request_body.media_config = media_config
request_body.tenant_id = 'aa67bd4c-8475-432d-bd41-39f255720e0a'




result = await client.communications.calls.post(request_body = request_body)


```