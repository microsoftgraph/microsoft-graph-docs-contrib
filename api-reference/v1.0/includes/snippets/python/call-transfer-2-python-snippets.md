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

transfer_targetidentityuser = Identity()
transfer_targetidentityuser.@odata_type = '#microsoft.graph.identity'

transfer_targetidentityuser.id = '550fae72-d251-43ec-868c-373732c2704f'

transfer_targetidentityuser.display_name = 'Heidi Steen'


transfer_targetidentity.user = transfer_targetidentityuser

transfer_target.identity = transfer_targetidentity
transfer_target.replaces_call_id = 'e5d39592-99bd-4db8-bca8-30fb894ec51d'

additional_data = [
'endpoint_type' => 'default', 
];
transfer_target.additional_data(additional_data)



request_body.transfer_target = transfer_target



await client.communications.calls.by_call_id('call-id').transfer.post(request_body = request_body)


```