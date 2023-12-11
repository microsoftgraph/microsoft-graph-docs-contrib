---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageAssignmentPolicy(
	display_name = "policy-with-verified-id",
	description = "test",
	access_package_id = "ba5807c7-2aa9-4c8a-907e-4a17ee587500",
	can_extend = False,
	request_approval_settings = None,
	requestor_settings = RequestorSettings(
		accept_requests = True,
		scope_type = "AllExistingDirectorySubjects",
		allowed_requestors = [
		],
		additional_data = {
				"is_on_behalf_allowed" : False,
		}
	),
	access_review_settings = None,
	questions = [
	],
	custom_extension_handlers = [
	],
	verifiable_credential_settings = VerifiableCredentialSettings(
		credential_types = [
			VerifiableCredentialType(
				issuers = [
					"did:ion:EiAlrenrtD3Lsw0GlbzS1O2YFdy3Xtu8yo35W<SNIP>...",
				],
				credential_type = "VerifiedCredentialExpert",
			),
		],
	),
	additional_data = {
			"expiration" : {
					"type" : "afterDuration",
					"duration" : "P365D",
			},
	}
)

result = await graph_client.identity_governance.entitlement_management.access_package_assignment_policies.post(request_body)


```