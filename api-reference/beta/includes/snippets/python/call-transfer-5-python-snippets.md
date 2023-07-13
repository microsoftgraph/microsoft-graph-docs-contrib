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

request_body.transfer_target = transfer_target
transferee = ParticipantInfo()
transfereeidentity = IdentitySet()
transfereeidentityuser = Identity()
transfereeidentityuser.id = '751f6800-3180-414d-bd94-333364659951'

additional_data = [
'tenant_id' => '72f988bf-86f1-41af-91ab-2d7cd011db47', 
];
transfereeidentityuser.additional_data(additional_data)



transfereeidentity.user = transfereeidentityuser

transferee.identity = transfereeidentity
transferee.participant_id = '909c6581-5130-43e9-88f3-fcb3582cde37'


request_body.transferee = transferee
additional_data = [
'language_id' => 'languageId-value', 
'region' => 'region-value', 
];
request_body.additional_data(additional_data)





await client.communications.calls.by_call_id('call-id').transfer.post(request_body = request_body)


```