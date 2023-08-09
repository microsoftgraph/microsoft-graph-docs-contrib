---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TransferPostRequestBody()
transfer_target = InvitationParticipantInfo()
transfer_target.endpointtype(EndpointType.Default('endpointtype.default'))

transfer_targetidentity = IdentitySet()
transfer_targetidentityuser = Identity()
transfer_targetidentityuser.id = '550fae72-d251-43ec-868c-373732c2704f'

transfer_targetidentityuser.display_name = 'Heidi Steen'

additional_data = [
'tenant_id' => '72f988bf-86f1-41af-91ab-2d7cd011db47', 
];
transfer_targetidentityuser.additional_data(additional_data)



transfer_targetidentity.user = transfer_targetidentityuser

transfer_target.identity = transfer_targetidentity
additional_data = [
'language_id' => 'languageId-value', 
'region' => 'region-value', 
];
transfer_target.additional_data(additional_data)



request_body.transfer_target = transfer_target



await client.communications.calls.by_call_id('call-id').transfer.post(request_body = request_body)


```