---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TransferPostRequestBody()
transfer_target = InvitationParticipantInfo()
transfer_target.@odata_type = '#microsoft.graph.invitationParticipantInfo'

transfer_targetidentity = IdentitySet()
transfer_targetidentity.@odata_type = '#microsoft.graph.identitySet'

additional_data = [
'phone' => transfer_targetidentity = Phone()
		transfer_targetidentity.@odata_type = '#microsoft.graph.identity'

		transfer_targetidentity.id = '+12345678901'


transfer_targetidentity.phone = phone

];
transfer_targetidentity.additional_data(additional_data)



transfer_target.identity = transfer_targetidentity
transfer_target.replaces_call_id = 'e5d39592-99bd-4db8-bca8-30fb894ec51d'

additional_data = [
'endpoint_type' => 'default', 
'language_id' => 'en-us', 
'region' => 'amer', 
];
transfer_target.additional_data(additional_data)



request_body.transfer_target = transfer_target
additional_data = [
'client_context' => '9e90d1c1-f61e-43e7-9f75-d420159aae08', 
];
request_body.additional_data(additional_data)





await client.communications.calls.by_call_id('call-id').transfer.post(request_body = request_body)


```