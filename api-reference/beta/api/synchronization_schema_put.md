# Update synchronization schema

Updates synchronization schema for a given job or template. Fully replaces current schema with the one provided in the request. To update schema of a template, call must be made on the application object, and caller must be the owner of the application.

## Request

```http
PUT /servicePrincipals/{id}/synchronization/jobs/{jobId}/schema
PUT /applications/{id}/synchronization/templates/{templateId}/schema
```

## Response

If successful, returns `204 No Content` response.

## Example

### Sample request

Request body below is shortened for brevity. One must provide full synchronization schema in the body of the request, as existing schema will be fully replaced with the provided one

```http
PUT https://graph.microsoft.com/beta/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema

{
    "directories": [
        {
            "name": "Azure Active Directory",
            "objects": [
                {
                    "name": "User",
                    "attributes": [
                        {
                            "name": "userPrincipalName",
                            "type": "string"
                        },
                        {...}
                    ]
                },
                {...}
            ]
        },
        {
            "name": "Salesforce",
            "objects": [...]
        }
    ],
    "synchronizationRules":[
        {
            "name": "USER_TO_USER",
            "sourceDirectoryName": "Azure Active Directory",
            "targetDirectoryName": "Salesforce",
            "objectMappings": [
                {
                    "sourceObjectName": "User",
                    "targetObjectName": "User",
                    "attributeMappings": [
                        {
                            "source": {...},
                            "targetAttributeName": "userName"
                        },
                        {...}
                    ]
                },
                {...}
            ]
        },
        { ... }
    ]
}

```

### Sample response

```http
HTTP/1.1 204 No Content
```
