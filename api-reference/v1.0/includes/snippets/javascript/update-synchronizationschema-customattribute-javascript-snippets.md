---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const synchronizationSchema = {
   directories: [
      {
         id: '09760868-cafb-47ac-9031-0a3262300427',
         name: 'customappsso',
         objects: [
            {
               name: 'User',
               attributes: [
                  {
                     anchor: false,
                     caseExact: false,
                     defaultValue: null,
                     flowNullValues: false,
                     multivalued: false,
                     mutability: 'ReadWrite',
                     name: 'urn:ietf:params:scim:schemas:extension:CustomExtensionName:2.0:User:CustomAttribute',
                     required: false,
                     type: 'String',
                     apiExpressions: [],
                     metadata: [],
                     referencedObjects: []
                  }
               ]
            }
         ]
      }
   ]
};

await client.api('/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema')
	.put(synchronizationSchema);

```