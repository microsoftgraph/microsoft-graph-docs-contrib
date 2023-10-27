---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const bulkUpload = {
    schemas: [
        'urn:ietf:params:scim:api:messages:2.0:BulkRequest'
    ],
    Operations: [
        {
            method: 'DELETE',
            bulkId: '7172023',
            path: '/Users',
            data: {
                schemas: [
                    'urn:ietf:params:scim:schemas:core:2.0:User',
                    'urn:ietf:params:scim:schemas:extension:enterprise:2.0:User'
                ],
                externalId: '7172023'
            }
        }
    ]
};

await client.api('/servicePrincipals/{servicePrincipalId}/synchronization/jobs/{jobId}/bulkUpload')
	.version('beta')
	.post(bulkUpload);

```