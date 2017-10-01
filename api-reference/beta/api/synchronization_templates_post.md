## Create synchorniztion template

Create new template for a given application

### Request

```http
POST /applications/{id}/synchronization/templates/
```

### Request body

Body should contain [synchronizationTemplate](../resources/synchronization_template.md) object to be created. `id`, `applicationId` and `factoryTag` properties are required. When no `schema` is provided with the template, default schema associated with `factoryTag` will be used.

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
