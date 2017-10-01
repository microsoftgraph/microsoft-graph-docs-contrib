# Create synchronization job

Creates new synchronization job with default synchornization schema. Job is created in disabled state. Call [Start job](#synchronization_job_start.md) to start synchronization.

## Request

```http
POST /servicePrincipals/{id}/synchronization/jobs/
```

### Request body

Body should contain [synchronizationJob](../resources/synchronization_job.md) object to be created. `templateId` is the only required property. `templateId` must match one of the templates created for this application/service principal (to discover available templates, use [List templates](synchronization_templates_get.md).

### Response

If successful, returns `201 Created` response

### Example

#### Sample request

```http
POST https://graph.microsoft.com/testSynchronization/applications/{id}/synchronization/templates
Content-type: application/json
{ 
    "id": "SCIM-Test1",
    "applicationId": "{id}",
    "factoryTag: "CustomSCIM"
}
```

#### Sample response

```http
HTTP/1.1 201 Created
{
    "id": "SCIM-Test1",
    "applicationId": "{id}",
    "factoryTag": "CustomSCIM",
    "schema": {
        "directories": [...],
        "synchronizationRules": [...]
    }
}
```
