# Get synchronization schema

Retrieves effective schema for a given job or template

## Request

```http
GET /servicePrincipals/{id}/synchronization/jobs/{jobId}/schema
GET /servicePrincipals/{id}/synchronization/templates/{templateId}/schema
GET /applications/{id}/synchronization/templates/{templateId}/schema
```

## Response

If successful, returns `200 OK` response with [synchronizationJob](../resources/synchronization_job.md) in the response body.

## Example

### Sample request

```http
GET https://graph.microsoft.com/beta/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema
```

### Sample response

Response below is shortened for brevity. You can see a full sample of schema [here](../resources/synchronization_schema_sample.md).

```http
HTTP/1.1 200 OK

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
