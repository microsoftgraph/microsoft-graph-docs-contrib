---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentPolicy()
request_body.display_name = 'policy-with-verified-id'

request_body.description = 'test'

request_body.access_package_id = 'ba5807c7-2aa9-4c8a-907e-4a17ee587500'

request_body.can_extend = False

request_body.requestApprovalSettings=null

requestor_settings = RequestorSettings()
requestor_settings.accept_requests = True

requestor_settings.scope_type = 'AllExistingDirectorySubjects'

requestor_settings.AllowedRequestors([])

additional_data = [
'is_on_behalf_allowed' => false,
];
requestor_settings.additional_data(additional_data)



request_body.requestor_settings = requestor_settings
request_body.accessReviewSettings=null

request_body.Questions([])

request_body.CustomExtensionHandlers([])

verifiable_credential_settings = VerifiableCredentialSettings()
credential_types_verifiable_credential_type1 = VerifiableCredentialType()
credential_types_verifiable_credential_type1.Issuers(['did:ion:EiAlrenrtD3Lsw0GlbzS1O2YFdy3Xtu8yo35W<SNIP>...', ])

credential_types_verifiable_credential_type1.credential_type = 'VerifiedCredentialExpert'


credentialTypesArray []= credentialTypesVerifiableCredentialType1;
verifiable_credential_settings.credentialtypes(credentialTypesArray)



request_body.verifiable_credential_settings = verifiable_credential_settings
additional_data = [
'expiration' => request_body = Expiration()
request_body.type = 'afterDuration'

request_body.duration = 'P365D'


request_body.expiration = expiration

];
request_body.additional_data(additional_data)





result = await client.identity_governance.entitlement_management.acces_package_assignment_policies.post(request_body = request_body)


```