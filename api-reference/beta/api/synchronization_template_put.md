# Update synchronization template

Update (override) synchronization template associated with a given application

### Request

```http
PUT application/{id}/synchronization/templates/{templateId}
```

### Request body

Body should contain [synchronizationTemplate](../resources/synchronization_template.md) with desired updates. Make sure all properties are provided, as missing properties will be erased

### Response

If successful, returns `204 No Content` response

### Examples

#### Request

```http
PUT https://graph.microsoft.com/testSynchronization/applications/{id}/synchronization/templates/{templateId}
Authorization: Bearer <token>
Content-type: application/json

{
    "id": "Slack",
    "applicationId": "{id}",
    "factoryTag": "CustomSCIM",
    "schema": {
        "directories": [...],
        "synchronizationRules": [...]
    }
}
```

#### Response

```http
HTTP/1.1 204 No Content
```